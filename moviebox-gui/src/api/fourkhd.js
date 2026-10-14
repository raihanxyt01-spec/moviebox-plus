import { Capacitor, CapacitorHttp } from '@capacitor/core';
import CryptoJS from 'crypto-js';

const FOURKHD_BASE = 'https://4khdhub.one';

function rot13(str) {
  return str.replace(/[a-zA-Z]/g, (c) => {
    return String.fromCharCode((c <= 'Z' ? 90 : 122) >= (c = c.charCodeAt(0) + 13) ? c : c - 26);
  });
}

function base64Decode(str) {
  try {
    const parsed = CryptoJS.enc.Base64.parse(str);
    return CryptoJS.enc.Utf8.stringify(parsed);
  } catch {
    try {
      return atob(str.replace(/-/g, '+').replace(/_/g, '/'));
    } catch {
      return '';
    }
  }
}

function unpackGreenmotorsPayload(html) {
  const match = html.match(/s\(\s*['"]o['"]\s*,\s*['"]([^'"]+)['"]/);
  if (!match) return null;
  const payload = match[1];
  try {
    const s1 = base64Decode(payload);
    const s2 = base64Decode(s1);
    const s3 = rot13(s2);
    const s4 = base64Decode(s3);
    const json = JSON.parse(s4);
    return base64Decode(json.o);
  } catch (e) {
    return null;
  }
}

async function requestText(url, headers = {}) {
  const reqHeaders = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36',
    ...headers
  };

  if (Capacitor.isNativePlatform()) {
    try {
      const res = await CapacitorHttp.get({
        url,
        headers: reqHeaders
      });
      return typeof res.data === 'string' ? res.data : JSON.stringify(res.data);
    } catch (e) {
      console.warn('CapacitorHttp get failed:', e);
    }
  }

  const res = await fetch(url, { headers: reqHeaders });
  return await res.text();
}

class FourKHdApi {
  async search(query = '') {
    // If running in Electron desktop environment, use native IPC
    if (typeof window !== 'undefined' && window.electronAPI && window.electronAPI.fourkhdSearch) {
      try {
        return await window.electronAPI.fourkhdSearch(query);
      } catch (e) {
        console.warn('Electron fourkhdSearch failed, falling back:', e);
      }
    }

    try {
      const url = query && query.trim() 
        ? `${FOURKHD_BASE}/?s=${encodeURIComponent(query.trim())}`
        : `${FOURKHD_BASE}/`;
      const html = await requestText(url);

      const cardRegex = /<a[^>]+href=["']([^"']+)["'][^>]+class=["'][^"']*movie-card[^"']*["'][^>]*>([\s\S]*?)<\/a>|<a[^>]+class=["'][^"']*movie-card[^"']*["'][^>]+href=["']([^"']+)["'][^>]*>([\s\S]*?)<\/a>/gi;
      let match;
      const items = [];
      while ((match = cardRegex.exec(html)) !== null) {
        const href = match[1] || match[3];
        const inner = match[2] || match[4];
        if (!href) continue;

        const titleM = inner.match(/class=["'][^"']*movie-card-title[^"']*["'][^>]*>([^<]+)/i);
        const metaM = inner.match(/class=["'][^"']*movie-card-meta[^"']*["'][^>]*>([^<]+)/i);
        const imgM = inner.match(/src=["']([^"']+)["']/i);

        const title = titleM ? titleM[1].trim() : 'Unknown';
        const meta = metaM ? metaM[1].trim() : '';
        const year = (meta.match(/\b(19\d\d|20\d\d)\b/) || [''])[0];
        const isSeries = href.includes('-series-') || meta.toUpperCase().includes('S0');

        items.push({
          id: `fourkhd_${href.replace(/^\//, '').replace(/\/$/, '')}`,
          path: href.startsWith('/') ? href : `/${href}`,
          title,
          type: isSeries ? 'Series' : 'Movie',
          year: year || '2025',
          rating: '8.8',
          cover: imgM ? imgM[1] : '',
          provider: 'fourkhdhub'
        });
      }
      return items;
    } catch (err) {
      console.error('4K HD Hub search error:', err);
      return [];
    }
  }

  async getHomepage(page = 1) {
    if (typeof window !== 'undefined' && window.electronAPI && window.electronAPI.fourkhdSearch) {
      try {
        return await window.electronAPI.fourkhdSearch('');
      } catch (e) {}
    }
    return this.search('');
  }

  async getDetails(path) {
    if (typeof window !== 'undefined' && window.electronAPI && window.electronAPI.fourkhdDetails) {
      try {
        const res = await window.electronAPI.fourkhdDetails(path);
        if (res) return res;
      } catch (e) {
        console.warn('Electron fourkhdDetails failed:', e);
      }
    }

    try {
      const cleanPath = path.startsWith('fourkhd_') ? `/${path.replace('fourkhd_', '')}/` : path;
      const url = cleanPath.startsWith('http') ? cleanPath : `${FOURKHD_BASE}${cleanPath}`;
      const html = await requestText(url);

      const h1M = html.match(/<h1[^>]*>([\s\S]*?)<\/h1>/i);
      const descM = html.match(/class=["'][^"']*content-section[^"']*["'][\s\S]*?<p[^>]+class=["'][^"']*mt-4[^"']*["'][^>]*>([\s\S]*?)<\/p>/i);
      const imgM = html.match(/property=["']og:image["'][^>]+content=["']([^"']+)["']/i);

      const title = h1M ? h1M[1].replace(/<[^>]+>/g, '').trim() : 'Movie';
      const description = descM ? descM[1].replace(/<[^>]+>/g, '').trim() : '';
      const cover = imgM ? imgM[1] : '';
      const isSeries = cleanPath.includes('-series-');

      return {
        id: `fourkhd_${cleanPath.replace(/^\//, '').replace(/\/$/, '')}`,
        path: cleanPath,
        title,
        type: isSeries ? 'Series' : 'Movie',
        cover,
        synopsis: description,
        description,
        year: (title.match(/\b(19\d\d|20\d\d)\b/) || ['2025'])[0],
        provider: 'fourkhdhub',
        seasons: isSeries ? [{ season: 1, episodeCount: 12 }] : []
      };
    } catch (err) {
      console.error('4K HD Hub getDetails error:', err);
      return null;
    }
  }

  async getPlayStreams(path, season = 0, episode = 0) {
    if (typeof window !== 'undefined' && window.electronAPI && window.electronAPI.fourkhdStreams) {
      try {
        const list = await window.electronAPI.fourkhdStreams({ path, season, episode });
        if (list && list.length > 0) {
          return {
            sources: list,
            subtitles: [],
            defaultSubtitle: 'off'
          };
        }
      } catch (e) {
        console.warn('Electron fourkhdStreams failed:', e);
      }
    }

    try {
      const cleanPath = path.startsWith('fourkhd_') ? `/${path.replace('fourkhd_', '')}/` : path;
      const url = cleanPath.startsWith('http') ? cleanPath : `${FOURKHD_BASE}${cleanPath}`;
      const html = await requestText(url);

      const isSeason = season > 0;
      const itemRegex = isSeason 
        ? /<div[^>]+class=["'][^"']*episode-download-item[^"']*["'][^>]*>([\s\S]*?)<\/div>\s*<\/div>/gi
        : /<div[^>]+class=["'][^"']*download-item[^"']*["'][^>]*>([\s\S]*?)<\/div>\s*<\/div>/gi;

      let match;
      const sources = [];
      while ((match = itemRegex.exec(html)) !== null) {
        const block = match[1];
        const titleM = block.match(/class=["'][^"']*(?:file-title|episode-file-title)[^"']*["'][^>]*>([\s\S]*?)<\/h[0-9]>/i);
        const sizeM = block.match(/class=["'][^"']*(?:badge-size|badge)[^"']*["'][^>]*>([\s\S]*?)<\/span>/i);
        const linkMatches = [...block.matchAll(/<a[^>]+href=["']([^"']+)["'][^>]*>([\s\S]*?)<\/a>/gi)];

        const rawTitle = titleM ? titleM[1].replace(/<[^>]+>/g, '').trim() : '';
        const size = sizeM ? sizeM[1].replace(/<[^>]+>/g, '').trim() : '';
        const mirrors = linkMatches.map(m => ({
          label: m[2].replace(/<[^>]+>/g, '').trim(),
          url: m[1]
        })).filter(m => m.url && !m.url.includes('logout'));

        if (mirrors.length > 0) {
          const lower = (rawTitle + ' ' + size).toLowerCase();
          let res = 1080;
          let badge = '1080p';
          if (lower.includes('2160') || lower.includes('4k') || lower.includes('uhd')) {
            res = 2160;
            badge = '4K';
          } else if (lower.includes('720')) {
            res = 720;
            badge = '720p';
          } else if (lower.includes('480')) {
            res = 480;
            badge = '480p';
          }

          let codec = 'HEVC';
          if (lower.includes('av1')) codec = 'AV1';
          else if (lower.includes('h.264') || lower.includes('x264')) codec = 'H.264';

          sources.push({
            id: `fourkhd_stream_${sources.length}`,
            label: `${badge} (${size ? `${size} • ` : ''}${codec} 4KHDHub)`,
            resolution: res,
            badge,
            size,
            codec,
            source: '4K HD Hub',
            release: rawTitle || `4K HD Stream ${badge}`,
            mirrors,
            primaryMirror: mirrors[0].url,
            url: mirrors[0].url,
            direct: false
          });
        }
      }

      return {
        sources,
        subtitles: [],
        defaultSubtitle: 'off'
      };
    } catch (err) {
      console.error('4K HD Hub getPlayStreams error:', err);
      return { sources: [], subtitles: [], defaultSubtitle: 'off' };
    }
  }

  async resolveMirror(mirrorUrl) {
    if (typeof window !== 'undefined' && window.electronAPI && window.electronAPI.resolveMirror) {
      try {
        const res = await window.electronAPI.resolveMirror(mirrorUrl);
        if (res && res.url) return res;
      } catch (e) {
        console.warn('Electron resolveMirror failed:', e);
      }
    }

    try {
      let currentUrl = mirrorUrl;
      if (currentUrl.includes('greenmotors.') || currentUrl.includes('greenmountmotors.')) {
        const gmHtml = await requestText(currentUrl);
        const unpacked = unpackGreenmotorsPayload(gmHtml);
        if (unpacked) currentUrl = unpacked;
      }

      if (currentUrl.includes('hubcloud.') || currentUrl.includes('hubdrive.')) {
        const driveHtml = await requestText(currentUrl);
        const gamerMatch = driveHtml.match(/href=["'](https?:\/\/[^"']*(?:gamerxyt|hubcloud\.php)[^"']*)["']/i);
        if (gamerMatch) {
          const resolverHtml = await requestText(gamerMatch[1]);
          const links = [...resolverHtml.matchAll(/<a[^>]+href=["'](https?:\/\/[^"']+)["'][^>]*>([\s\S]*?)<\/a>/gi)];
          for (const l of links) {
            const href = l[1];
            const label = l[2].replace(/<[^>]+>/g, '').trim().toLowerCase();
            if (href.includes('.mkv') || href.includes('.mp4') || href.includes('r2.cloudflarestorage') || href.includes('pixeldrain') || href.includes('/drive/video/play') || label.includes('download') || label.includes('fast')) {
              return {
                url: href,
                label: l[2].replace(/<[^>]+>/g, '').trim(),
                direct: true
              };
            }
          }
        }
      }

      return { url: currentUrl, label: 'Direct Mirror', direct: true };
    } catch (err) {
      console.error('resolveMirror error:', err);
      return { url: mirrorUrl, label: 'Mirror', direct: false };
    }
  }
}

export const fourkhdApi = new FourKHdApi();
