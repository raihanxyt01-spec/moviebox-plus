// DesiDubAnime Provider Adapter
// Scrapes & decodes anime catalog, episode lists, and multi-audio HLS streams from https://www.desidubanime.me/
import CryptoJS from 'crypto-js';

const DESIDUB_BASE = 'https://www.desidubanime.me';
const P2P_KEY_STR = 'kiemtienmua911ca';
const P2P_KEY = CryptoJS.enc.Utf8.parse(P2P_KEY_STR);

// Dynamic IV generation algorithm extracted from p2pplay.pro
function computeP2pIV(hash) {
  const r = 'https:';
  const h = r + '//';
  const b = hash.startsWith('#') ? hash : '#' + hash;
  const R = r.length * h.length; // 48
  const T = 1;
  let L = '';
  for (let re = T; re < 10; re++) L += String.fromCodePoint(re + R); // '123456789'
  let dollars = T + '' + T + '' + T; // '111'
  const Y = dollars.length * (b.codePointAt(0) || 0); // 105
  const oe = dollars * T + r.length; // 117
  const P = oe + 4; // 121
  const se = r.codePointAt(T) || 0; // 116
  const xe = se * T - 2; // 114
  L += String.fromCodePoint(R, parseInt(dollars), Y, oe, P, se, xe);
  return CryptoJS.enc.Utf8.parse(L);
}

class DesiDubAnimeApi {
  constructor() {
    this.name = 'DesiDubAnime';
  }

  // Helper for requests
  async fetchWithHeaders(url, customHeaders = {}) {
    const headers = {
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
      ...customHeaders
    };
    return await fetch(url, { headers });
  }

  // Get Latest / Trending Anime for Home Screen
  async getLatest(page = 1, perPage = 24) {
    try {
      const url = `${DESIDUB_BASE}/wp-json/wp/v2/anime?page=${page}&per_page=${perPage}&_embed=1`;
      const res = await this.fetchWithHeaders(url);
      if (!res.ok) return [];
      const items = await res.json();
      return (items || []).map(item => this.formatAnimeItem(item));
    } catch (err) {
      console.error('DesiDubAnime getLatest failed:', err);
      return [];
    }
  }

  formatAnimeItem(item) {
    const featuredMedia = item._embedded?.['wp:featuredmedia']?.[0]?.source_url || '';
    const title = item.title?.rendered ? item.title.rendered.replace(/&#8211;/g, '-').replace(/&#8220;/g, '"').replace(/&#8221;/g, '"').replace(/&#8217;/g, "'").replace(/&amp;/g, '&') : (item.title || 'Anime');
    
    // Extract Hindi / Multi tag from classes
    const classes = item.class_list || [];
    const isHindi = classes.some(c => c.includes('hindi'));
    const isEnglish = classes.some(c => c.includes('english'));
    const isJapanese = classes.some(c => c.includes('japanese'));
    
    let audioTag = 'Multi';
    if (isHindi && !isEnglish) audioTag = 'Hindi Dub';
    else if (isHindi && isEnglish) audioTag = 'Hindi + Eng';

    return {
      id: `desidub_${item.id}`,
      wpId: item.id,
      title: title,
      slug: item.slug,
      type: 'Series',
      year: (item.date || '').slice(0, 4) || '2025',
      rating: '8.8',
      badge: audioTag,
      quality: '1080p',
      cover: featuredMedia,
      banner: featuredMedia,
      description: item.excerpt?.rendered ? item.excerpt.rendered.replace(/<[^>]+>/g, '').trim() : '',
      provider: 'desidubanime',
      raw: item
    };
  }

  // Search anime by keyword
  async search(query) {
    if (!query || !query.trim()) return [];
    try {
      // 1. Try Kiranime Instant Search endpoint
      const searchUrl = `${DESIDUB_BASE}/wp-json/kiranime/v1/anime/search?query=${encodeURIComponent(query.trim())}`;
      const res = await this.fetchWithHeaders(searchUrl);
      if (res.ok) {
        const json = await res.json();
        const html = json?.result || '';
        if (html && html.includes('<a href=')) {
          const results = [];
          const regex = /<a href=["']https:\/\/www\.desidubanime\.me\/anime\/([^"'/]+)\/["'][^>]*>[\s\S]*?<img [^>]*src=['"]([^'"]+)['"][\s\S]*?<h3[^>]*>([\s\S]*?)<\/h3>/gi;
          let m;
          while ((m = regex.exec(html)) !== null) {
            const slug = m[1];
            const cover = m[2];
            const rawTitle = m[3].replace(/<[^>]+>/g, '').trim();
            const cleanTitle = rawTitle.replace(/\s+/g, ' ');
            results.push({
              id: `desidub_search_${slug}`,
              title: cleanTitle,
              slug: slug,
              type: 'Series',
              year: '2025',
              rating: '8.8',
              badge: 'Hindi Dub',
              quality: '1080p',
              cover: cover,
              provider: 'desidubanime'
            });
          }
          if (results.length > 0) return results;
        }
      }

      // 2. Fallback to WP REST search
      const wpUrl = `${DESIDUB_BASE}/wp-json/wp/v2/anime?search=${encodeURIComponent(query.trim())}&per_page=20&_embed=1`;
      const wpRes = await this.fetchWithHeaders(wpUrl);
      if (wpRes.ok) {
        const wpItems = await wpRes.json();
        return (wpItems || []).map(item => this.formatAnimeItem(item));
      }
      return [];
    } catch (err) {
      console.error('DesiDubAnime search failed:', err);
      return [];
    }
  }

  // Fetch episodes for an anime series
  async getEpisodes(animeItem) {
    try {
      let animeId = animeItem?.wpId;
      const slug = animeItem?.slug || (animeItem?.id ? animeItem.id.replace('desidub_search_', '').replace('desidub_', '') : '');

      // If we don't have the numeric wpId, fetch it from anime single page
      if (!animeId && slug) {
        const pageUrl = `${DESIDUB_BASE}/anime/${slug}/`;
        const res = await this.fetchWithHeaders(pageUrl);
        if (res.ok) {
          const html = await res.text();
          const match = html.match(/postID["']?:\s*(\d+)/i) || html.match(/data-season=["'](\d+)["']/i);
          if (match) {
            animeId = match[1];
          }
        }
      }

      // Fetch episodes via admin-ajax.php
      if (animeId) {
        const ajaxUrl = `${DESIDUB_BASE}/wp-admin/admin-ajax.php?action=get_episodes&anime_id=${animeId}&page=1&order=asc`;
        const res = await this.fetchWithHeaders(ajaxUrl);
        if (res.ok) {
          const json = await res.json();
          const list = json?.data?.episodes || [];
          if (list.length > 0) {
            return list.map((ep, idx) => ({
              id: ep.id || `ep_${idx + 1}`,
              episodeNumber: parseInt(ep.meta_number || ep.tmdb_fetch_episode || (idx + 1)),
              seasonNumber: 1,
              title: ep.title ? `${ep.number}: ${ep.title}` : (ep.post_title || `Episode ${idx + 1}`),
              name: ep.title || ep.post_title || `Episode ${idx + 1}`,
              url: ep.url,
              thumbnail: ep.thumbnail,
              duration: ep.duration || '24m'
            }));
          }
        }
      }

      // Fallback: parse watch links from the anime HTML page
      if (slug) {
        const pageUrl = `${DESIDUB_BASE}/anime/${slug}/`;
        const res = await this.fetchWithHeaders(pageUrl);
        if (res.ok) {
          const html = await res.text();
          const epRegex = /href=["'](https:\/\/www\.desidubanime\.me\/watch\/([^"'/]+)\/?)["'][^>]*>([\s\S]*?)<\/a>/gi;
          const episodes = [];
          const seen = new Set();
          let m;
          while ((m = epRegex.exec(html)) !== null) {
            const epUrl = m[1];
            const epSlug = m[2];
            const epText = m[3].replace(/<[^>]+>/g, '').trim();
            if (epSlug && !seen.has(epSlug)) {
              seen.add(epSlug);
              const numMatch = epSlug.match(/episode-(\d+)/i) || epText.match(/Episode\s*(\d+)/i) || epSlug.match(/-(\d+)$/);
              const epNum = numMatch ? parseInt(numMatch[1]) : episodes.length + 1;
              episodes.push({
                id: epSlug,
                episodeNumber: epNum,
                seasonNumber: 1,
                title: epText || `Episode ${epNum}`,
                name: epText || `Episode ${epNum}`,
                url: epUrl
              });
            }
          }
          episodes.sort((a, b) => a.episodeNumber - b.episodeNumber);
          return episodes;
        }
      }
      return [];
    } catch (err) {
      console.error('DesiDubAnime getEpisodes failed:', err);
      return [];
    }
  }

  // Resolve Play Streams for an episode
  async getPlayStreams(episodeUrlOrSlug, epNum = 1) {
    try {
      let watchUrl = episodeUrlOrSlug;
      if (!watchUrl.startsWith('http')) {
        watchUrl = `${DESIDUB_BASE}/watch/${episodeUrlOrSlug}/`;
      }

      const res = await this.fetchWithHeaders(watchUrl);
      if (!res.ok) return { sources: [], subtitles: [] };
      const html = await res.text();

      // Extract all server embed links (data-embed-id)
      const embedRegex = /data-embed-id=['"]([^'"]+)['"]/g;
      let m;
      let p2pEmbed = null;
      let abyssEmbed = null;
      let mirrorEmbed = null;

      while ((m = embedRegex.exec(html)) !== null) {
        const raw = m[1];
        const parts = raw.split(':');
        if (parts.length >= 2) {
          try {
            const serverName = atob(parts[0]).toLowerCase();
            const embedUrl = atob(parts[1]);
            if (serverName.includes('p2p') || embedUrl.includes('p2pplay.pro')) {
              p2pEmbed = embedUrl;
            } else if (serverName.includes('abyss') || embedUrl.includes('abyssplayer')) {
              abyssEmbed = embedUrl;
            } else if (serverName.includes('mirror') || embedUrl.includes('filesforever')) {
              mirrorEmbed = embedUrl;
            }
          } catch (e) {}
        }
      }

      // Check default iframe if none found
      if (!p2pEmbed && !abyssEmbed && !mirrorEmbed) {
        const iframeMatch = html.match(/<iframe[^>]*src=['"]([^'"]+)['"][^>]*>/i);
        if (iframeMatch) {
          const src = iframeMatch[1];
          if (src.includes('p2pplay.pro')) p2pEmbed = src;
          else if (src.includes('abyssplayer')) abyssEmbed = src;
          else mirrorEmbed = src;
        }
      }

      const sources = [];
      const subtitles = [];

      // 1. Resolve Streamp2p (Primary High-Performance Multi-Audio Server)
      if (p2pEmbed) {
        try {
          const urlObj = new URL(p2pEmbed);
          const hashId = (urlObj.hash || '').replace('#', '').split('&')[0];
          if (hashId) {
            const iv = computeP2pIV(hashId);
            const apiUrl = `https://${urlObj.hostname}/api/v1/video?id=${hashId}&w=1920&h=1080&r=https%3A%2F%2Fwww.desidubanime.me%2F`;
            const apiRes = await fetch(apiUrl, {
              headers: {
                'Referer': p2pEmbed,
                'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)'
              }
            });

            if (apiRes.ok) {
              const hex = (await apiRes.text()).trim();
              const cipherWords = CryptoJS.enc.Hex.parse(hex);
              const cipherBase64 = CryptoJS.enc.Base64.stringify(cipherWords);
              const decrypted = CryptoJS.AES.decrypt(cipherBase64, P2P_KEY, {
                iv: iv,
                mode: CryptoJS.mode.CBC,
                padding: CryptoJS.pad.Pkcs7
              });
              const jsonStr = decrypted.toString(CryptoJS.enc.Utf8);
              if (jsonStr) {
                const streamData = JSON.parse(jsonStr);

                // Add cfNative stream (Fast Cloudflare CDN Master HLS)
                if (streamData.cfNative) {
                  sources.push({
                    url: streamData.cfNative,
                    resolution: 1080,
                    quality: '1080p',
                    badge: 'Multi-Audio (Hindi/Tamil/Tel/Eng/Jap) 1080p',
                    server: 'P2P Cloudflare',
                    direct: true,
                    size: 'Fast HLS Stream',
                    type: 'hls'
                  });
                }

                // Add source backup stream
                if (streamData.source) {
                  sources.push({
                    url: streamData.source,
                    resolution: 1080,
                    quality: '1080p',
                    badge: 'Direct High-Speed HLS Master',
                    server: 'Direct Server',
                    direct: true,
                    size: 'HLS Stream',
                    type: 'hls'
                  });
                }

                // Subtitles
                if (streamData.subtitle) {
                  for (const lang of Object.keys(streamData.subtitle)) {
                    let subUrl = streamData.subtitle[lang];
                    if (subUrl.startsWith('/')) {
                      subUrl = `https://${urlObj.hostname}${subUrl}`;
                    }
                    subtitles.push({
                      label: lang.toUpperCase(),
                      language: lang,
                      url: subUrl
                    });
                  }
                }
              }
            }
          }
        } catch (p2pErr) {
          console.warn('P2P stream resolution failed:', p2pErr);
        }
      }

      // 2. Resolve Abyss Player if P2P was unavailable or as mirror
      if (abyssEmbed && sources.length === 0) {
        try {
          const abyssRes = await fetch(abyssEmbed, {
            headers: { 'Referer': DESIDUB_BASE, 'User-Agent': 'Mozilla/5.0' }
          });
          if (abyssRes.ok) {
            const abyssHtml = await abyssRes.text();
            const datasMatch = abyssHtml.match(/datas\s*=\s*["']([^"']+)["']/);
            if (datasMatch) {
              const decoded = atob(datasMatch[1]);
              const abyssData = JSON.parse(decoded);
              if (abyssData.sources) {
                for (const s of abyssData.sources) {
                  sources.push({
                    url: s.file,
                    resolution: 1080,
                    quality: s.label || '1080p',
                    badge: `Abyss ${s.label || 'HD'}`,
                    server: 'Abyss Player',
                    direct: true,
                    size: 'Stream',
                    type: s.type || 'hls'
                  });
                }
              }
            }
          }
        } catch (abyssErr) {
          console.warn('Abyss stream resolution failed:', abyssErr);
        }
      }

      // 3. Fallback to Mirror link (filesforever)
      if (mirrorEmbed && sources.length === 0) {
        sources.push({
          url: mirrorEmbed,
          resolution: 1080,
          quality: '1080p',
          badge: 'FilesForever Mirror',
          server: 'Mirror',
          direct: false,
          size: 'Web Embed',
          type: 'embed'
        });
      }

      return { sources, subtitles };
    } catch (err) {
      console.error('DesiDubAnime getPlayStreams failed:', err);
      return { sources: [], subtitles: [] };
    }
  }
}

export const desidubanimeApi = new DesiDubAnimeApi();
export default desidubanimeApi;
