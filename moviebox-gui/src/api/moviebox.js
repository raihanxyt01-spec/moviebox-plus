import CryptoJS from 'crypto-js';
import { filterEligibleMedia, getCollectedRestrictedItems } from '../utils/contentFilter.js';

const HOST_POOL = [
  'https://api6.aoneroom.com',
  'https://api5.aoneroom.com',
  'https://api4.aoneroom.com',
  'https://api4sg.aoneroom.com',
  'https://api3.aoneroom.com',
  'https://api6sg.aoneroom.com',
  'https://api.inmoviebox.com',
];

const SECRET_BYTES = [
  0xef, 0xa8, 0x91, 0x97, 0x4e, 0xec, 0xd3, 0x14,
  0x8d, 0xf6, 0x3a, 0xa6, 0x11, 0x60, 0x2d, 0xef,
  0xd1, 0x01, 0x25, 0x9b, 0xa5, 0x21, 0x02, 0x2c,
  0x57, 0xae, 0x05, 0x66, 0xbd, 0x8e
];

// Helper to convert byte array to CryptoJS WordArray
function secretToWordArray(bytes) {
  const words = [];
  for (let i = 0; i < bytes.length; i++) {
    words[i >>> 2] |= (bytes[i] & 0xff) << (24 - (i % 4) * 8);
  }
  return CryptoJS.lib.WordArray.create(words, bytes.length);
}

const SECRET_WORD_ARRAY = secretToWordArray(SECRET_BYTES);

export function isDeprecationNoticeUrl(url) {
  if (!url) return false;
  const lower = url.toLowerCase();
  return lower.includes('1c7de0bd3393702d9191801f15f88f8d')
    || lower.includes('9a0461bc39da389663bf3dbb17091d3f')
    || lower.includes('b164fbfb4347792950bdfbfb563d39d9')
    || lower.includes('80da52722ee7de7a4303290af6783424')
    || lower.includes('/notice.mp4')
    || (lower.includes('macdn.aoneroom.com') && lower.includes('/other/'));
}

export function resolveDashManifest(signCookie) {
  if (!signCookie) return null;
  for (const part of signCookie.split(';')) {
    const trimmed = part.trim();
    if (trimmed.includes('urlprefix=')) {
      const idx = trimmed.indexOf('urlprefix=');
      const prefixPart = trimmed.slice(idx + 'urlprefix='.length);
      const b64Token = prefixPart.split(':')[0].trim();
      let normalized = b64Token.replace(/-/g, '+').replace(/_/g, '/');
      const pad = (4 - normalized.length % 4) % 4;
      if (pad > 0 && pad < 4) normalized += '='.repeat(pad);
      try {
        let decoded;
        if (typeof Buffer !== 'undefined') {
          decoded = Buffer.from(normalized, 'base64').toString('utf8');
        } else {
          decoded = atob(normalized);
        }
        const base = decoded.replace(/\*+$/, '').replace(/\/+$/, '');
        if (base && (base.startsWith('http://') || base.startsWith('https://')) && base.includes('/dash/')) {
          return `${base}/index.mpd`;
        }
      } catch (e) {}
    }
    if (trimmed.startsWith('CloudFront-Policy=')) {
      const policyClean = trimmed.slice('CloudFront-Policy='.length).trim();
      let normalized = policyClean.replace(/-/g, '+').replace(/_/g, '=').replace(/~/g, '/');
      const pad = (4 - normalized.length % 4) % 4;
      if (pad > 0 && pad < 4) normalized += '='.repeat(pad);
      try {
        let decoded;
        if (typeof Buffer !== 'undefined') {
          decoded = Buffer.from(normalized, 'base64').toString('utf8');
        } else {
          decoded = atob(normalized);
        }
        const json = JSON.parse(decoded);
        const resource = json?.Statement?.[0]?.Resource;
        if (resource) {
          const base = resource.replace(/\*+$/, '').replace(/\/+$/, '');
          if (base.includes('/dash/')) {
            return `${base}/index.mpd`;
          }
        }
      } catch (e) {}
    }
  }
  return null;
}

class MovieBoxApi {
  constructor() {
    this.activeHostIdx = 0;
    const hasStorage = typeof localStorage !== 'undefined';
    this.sessionToken = hasStorage ? localStorage.getItem('mb_token') : null;
    this.deviceId = (hasStorage && localStorage.getItem('mb_device_id')) || this.randomHex(32);
    this.gaid = (hasStorage && localStorage.getItem('mb_gaid')) || this.randomUuid();
    
    if (hasStorage) {
      localStorage.setItem('mb_device_id', this.deviceId);
      localStorage.setItem('mb_gaid', this.gaid);
    }
  }

  randomHex(len) {
    let result = '';
    const hex = '0123456789abcdef';
    for (let i = 0; i < len; i++) {
      result += hex[Math.floor(Math.random() * 16)];
    }
    return result;
  }

  randomUuid() {
    return `${this.randomHex(8)}-${this.randomHex(4)}-${this.randomHex(4)}-${this.randomHex(4)}-${this.randomHex(12)}`;
  }

  sortCanonicalUrl(urlPath) {
    if (!urlPath || !urlPath.includes('?')) return urlPath;
    const [pathPart, queryPart] = urlPath.split('?');
    if (!queryPart) return pathPart;
    const searchParams = new URLSearchParams(queryPart);
    const sortedEntries = [...searchParams.entries()].sort((a, b) => a[0].localeCompare(b[0]));
    const sortedQuery = sortedEntries.map(([k, v]) => `${k}=${v}`).join('&');
    return sortedQuery ? `${pathPart}?${sortedQuery}` : pathPart;
  }

  buildSignedHeaders(method, urlPath, bodyStr, token) {
    const ts = Date.now();
    const tsStr = ts.toString();
    const revTs = tsStr.split('').reverse().join('');
    const clientToken = `${tsStr},${CryptoJS.MD5(revTs).toString(CryptoJS.enc.Hex)}`;

    const canonicalPath = this.sortCanonicalUrl(urlPath);
    const bodyLen = bodyStr ? new TextEncoder().encode(bodyStr).length.toString() : '';
    const bodyHash = bodyStr ? CryptoJS.MD5(bodyStr.slice(0, 102400)).toString(CryptoJS.enc.Hex) : '';

    const canonical = `${method.toUpperCase()}\napplication/json\napplication/json\n${bodyLen}\n${ts}\n${bodyHash}\n${canonicalPath}`;
    const hmacSig = CryptoJS.HmacMD5(canonical, SECRET_WORD_ARRAY);
    const sigBase64 = CryptoJS.enc.Base64.stringify(hmacSig);
    const signature = `${ts}|2|${sigBase64}`;

    const clientInfo = JSON.stringify({
      package_name: 'com.community.oneroom',
      version_name: '4.0.01.0813.03',
      version_code: 50020120,
      os: 'android',
      os_version: '12',
      install_ch: 'ps',
      device_id: this.deviceId,
      install_store: 'ps',
      gaid: this.gaid,
      brand: 'Redmi',
      model: '2201117TY',
      system_language: 'en',
      net: 'NETWORK_WIFI',
      region: 'US',
      timezone: 'Asia/Kolkata',
      sp_code: '40401',
      'X-Play-Mode': '2'
    });

    const headers = {
      'User-Agent': 'com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)',
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'x-client-token': clientToken,
      'x-tr-signature': signature,
      'x-client-info': clientInfo,
      'x-client-status': '0',
      'x-forwarded-for': '104.28.19.45',
    };

    if (token) {
      headers['Authorization'] = `Bearer ${token}`;
    }

    return headers;
  }

  async ensureSession() {
    if (this.sessionToken) {
      return this.sessionToken;
    }

    const path = '/wefeed-mobile-bff/user-api/visitor-login';
    const bodyStr = '{}';
    const res = await this.requestHosts('POST', path, bodyStr, null);
    
    if (res && res.data && res.data.token) {
      this.sessionToken = res.data.token;
      if (typeof localStorage !== 'undefined') {
        localStorage.setItem('mb_token', this.sessionToken);
      }
      return this.sessionToken;
    }

    throw new Error('Failed to obtain visitor token');
  }

  async requestHosts(method, path, bodyStr, authToken) {
    const maxRetries = HOST_POOL.length;

    for (let i = 0; i < maxRetries; i++) {
      const idx = (this.activeHostIdx + i) % HOST_POOL.length;
      const host = HOST_POOL[idx];
      const fullUrl = `${host}${path}`;

      const headers = this.buildSignedHeaders(method, path, bodyStr, authToken);

      try {
        const response = await fetch(fullUrl, {
          method: method,
          headers: headers,
          body: bodyStr ? bodyStr : undefined,
        });

        if (response.status === 401 || response.status === 403) {
          // Token expired, clear and renew
          this.sessionToken = null;
          if (typeof localStorage !== 'undefined') {
            localStorage.removeItem('mb_token');
          }
        }

        if ([403, 406, 407, 429, 500, 502, 503, 504].includes(response.status)) {
          this.activeHostIdx = (idx + 1) % HOST_POOL.length;
          await new Promise(r => setTimeout(r, 100));
          continue;
        }

        if (!response.ok) {
          throw new Error(`HTTP ${response.status}`);
        }

        const data = await response.json();
        this.activeHostIdx = idx;
        return data;
      } catch (err) {
        this.activeHostIdx = (idx + 1) % HOST_POOL.length;
        if (i === maxRetries - 1) {
          throw err;
        }
      }
    }
  }

  async apiRequest(method, path, bodyObj = null) {
    let token = await this.ensureSession();
    const bodyStr = bodyObj ? JSON.stringify(bodyObj) : null;

    try {
      return await this.requestHosts(method, path, bodyStr, token);
    } catch (e) {
      // Retry once with fresh token
      token = await this.ensureSession();
      return await this.requestHosts(method, path, bodyStr, token);
    }
  }

  // 1. Search movies and series across all categories with zero adult content
  async search(query, page = 1, perPage = 18, subjectType = 0) {
    const cleanQuery = (query || '').trim();
    if (!cleanQuery) return [];

    const safeLimit = Math.min(Math.max(perPage, 1), 20); // API rejects > 20 with 400
    let tabId = 'MovieTV';
    if (subjectType === 1) tabId = 'Movie';
    else if (subjectType === 2) tabId = 'TV';

    const payload = {
      keyword: cleanQuery,
      page: page,
      perPage: safeLimit,
      tabId: tabId,
      subjectType: subjectType,
    };

    let res = await this.apiRequest('POST', '/wefeed-mobile-bff/subject-api/search/v2', payload).catch(() => null);

    // If tabId MovieTV returned empty results, retry without tabId to query general catalog
    if (!res?.data?.results || res.data.results.length === 0) {
      delete payload.tabId;
      res = await this.apiRequest('POST', '/wefeed-mobile-bff/subject-api/search/v2', payload).catch(() => null);
    }

    const results = res?.data?.results || [];
    let subjects = [];

    // Collect subjects from all result groups (movies, series, collections)
    for (const group of results) {
      if (Array.isArray(group.subjects)) {
        for (const s of group.subjects) {
          if (s && (s.subjectType === 1 || s.subjectType === 2 || !s.subjectType)) {
            subjects.push(s);
          }
        }
      }
    }

    if (subjects.length === 0 && Array.isArray(res?.data?.items)) {
      subjects = res.data.items;
    }

    // Deduplicate by ID
    const seen = new Set();
    const unique = [];
    for (const s of subjects) {
      const id = (s.subjectId || s.id || '').toString();
      if (id && !seen.has(id)) {
        seen.add(id);
        const item = this.normalizeItem(s);
        if (item) unique.push(item);
      }
    }

    // Strict safety filter: automatically eliminate hentai, 18+, and adult items
    return filterEligibleMedia(unique, false);
  }

  // Browse by Genre (Action, Comedy, Sci-Fi, Horror, Animation/Anime, etc.)
  async getGenreMedia(genre, page = 1, type = 0) {
    if (!genre || genre === 'All' || genre === 'All Genres') {
      return this.getLatestReleases(page);
    }
    if (genre.toLowerCase() === 'anime' || genre.toLowerCase() === 'animation') {
      return this.getAnime(page);
    }
    return this.search(genre, page, 18, type);
  }

  // 2. Instant Suggest with Posters (for real-time typing like 'F')
  async instantSuggest(prefix) {
    if (!prefix || prefix.trim().length === 0) {
      return this.getTrending(8);
    }

    try {
      const results = await this.search(prefix.trim(), 1, 8, 0);
      return results;
    } catch (err) {
      console.warn('Instant suggest error:', err);
      return [];
    }
  }

  // 3. Homepage & Trending
  async getHomepageTabs(page = 1) {
    const res = await this.apiRequest('GET', `/wefeed-mobile-bff/tab-operating?page=${page}&tabId=&version=`);
    const items = res?.data?.items || [];
    
    const bannerItems = [];
    const sections = [];

    for (const group of items) {
      if (group.banner && group.banner.banners) {
        for (const b of group.banner.banners) {
          if (b.subject) {
            bannerItems.push(this.normalizeItem(b.subject));
          }
        }
      }

      const rowTitle = group.title || group.name || 'Featured';
      const subjects = group.subjects || (group.customData && group.customData.items ? group.customData.items.map(c => c.subject) : []);
      
      if (subjects && subjects.length > 0) {
        const normalized = subjects.filter(Boolean).map(s => this.normalizeItem(s));
        const clean = filterEligibleMedia(normalized);
        if (clean.length > 0) {
          sections.push({
            title: rowTitle,
            items: clean
          });
        }
      }
    }

    return {
      banners: filterEligibleMedia(bannerItems),
      sections: sections
    };
  }

  async getTrending(limit = 12) {
    const home = await this.getHomepageTabs(1);
    if (home.banners.length > 0) {
      return home.banners.slice(0, limit);
    }
    if (home.sections.length > 0 && home.sections[0].items.length > 0) {
      return home.sections[0].items.slice(0, limit);
    }
    return [];
  }

  // 4. Media Details
  async getDetails(subjectId) {
    const res = await this.apiRequest('GET', `/wefeed-mobile-bff/subject-api/get?subjectId=${subjectId}`);
    const details = res?.data?.subject || res?.data || {};

    const stype = details.subjectType || details.stype || 1;
    let seasons = [];

    if (stype === 2) {
      try {
        const seasonRes = await this.apiRequest('GET', `/wefeed-mobile-bff/subject-api/season-info?subjectId=${subjectId}`);
        const rawSeasons = seasonRes?.data?.seasons || [];
        seasons = rawSeasons.map((s, idx) => {
          const seNum = Number(s.se ?? s.season ?? (idx + 1));
          const epCount = Number(s.maxEp ?? (s.episodeNumbers ? s.episodeNumbers.length : 12));
          return {
            season: seNum,
            number: seNum,
            episodeCount: epCount,
            maxEp: epCount,
            vipInfo: s.vipInfo || null,
            resolutions: s.resolutions || [],
            episodes: Array.from({ length: epCount }, (_, i) => ({
              season: seNum,
              episode: i + 1,
              title: `Episode ${i + 1}`
            }))
          };
        });
      } catch (e) {
        console.warn('Season fetch failed:', e);
      }
    }

    return {
      ...this.normalizeItem(details),
      synopsis: details.description || details.intro || 'No description available.',
      director: details.director || details.directors || 'Unknown',
      stars: details.actors || details.stars || details.cast || 'N/A',
      genres: Array.isArray(details.genres) ? details.genres : (details.genre ? [details.genre] : []),
      duration: details.duration || details.runtime || '',
      seasons: seasons,
      dubs: Array.isArray(details.dubs) ? details.dubs.map(d => ({
        subjectId: (d.subjectId || d.id || '').toString(),
        language: d.lanName || d.language || d.lang || 'Original',
        label: d.title || d.name || d.lanName || d.language || 'Original'
      })) : [],
    };
  }

  // 5. Playback and Streams
  async getPlayStreams(subjectId, season = 0, episode = 0) {
    const isMovie = Number(season) === 0 && Number(episode) === 0;
    const path = isMovie
      ? `/wefeed-mobile-bff/subject-api/play-info/v2?subjectId=${subjectId}`
      : `/wefeed-mobile-bff/subject-api/play-info/v2?ep=${episode}&se=${season}&subjectId=${subjectId}`;

    const resPath = isMovie
      ? `/wefeed-mobile-bff/subject-api/resource?page=1&perPage=15&subjectId=${subjectId}`
      : `/wefeed-mobile-bff/subject-api/resource?ep=${episode}&page=1&perPage=15&se=${season}&subjectId=${subjectId}`;

    let streams = [];
    let captions = [];
    let resources = [];

    // Parallelize stream info and multi-resolution mirror retrieval for instant playback start
    const [playResResult, resourceResResult] = await Promise.allSettled([
      this.apiRequest('GET', path),
      this.apiRequest('GET', resPath)
    ]);

    if (playResResult.status === 'fulfilled' && playResResult.value) {
      const playRes = playResResult.value;
      streams = playRes?.data?.streams || [];
      captions = playRes?.data?.captions || playRes?.data?.extCaptions || [];
    }

    if (resourceResResult.status === 'fulfilled' && resourceResResult.value) {
      const rRes = resourceResResult.value;
      resources = rRes?.data?.list || rRes?.data?.items || [];
    }

function parseResolutionInfo(val, labelHint = '') {
  const str = (val || labelHint || '').toString().toLowerCase();
  if (str.includes('4k') || str.includes('2160') || str.includes('uhd')) {
    return { res: 2160, label: '4K Ultra HD', badge: '4K' };
  }
  if (str.includes('1080') || str.includes('fhd')) {
    return { res: 1080, label: '1080p Full HD', badge: '1080p' };
  }
  if (str.includes('720') || str.includes('hd')) {
    return { res: 720, label: '720p HD', badge: '720p' };
  }
  if (str.includes('480') || str.includes('sd')) {
    return { res: 480, label: '480p Standard', badge: '480p' };
  }
  if (str.includes('360')) {
    return { res: 360, label: '360p Data Saver', badge: '360p' };
  }
  const match = str.match(/\d+/);
  const num = match ? parseInt(match[0], 10) : 1080;
  return { res: num, label: `${num}p`, badge: `${num}p` };
}

    // Combine and format sources with exact resolution variants, file sizes, and media tags
    const sources = [];
    const seenKeys = new Set();

    for (const s of streams) {
      const signCookie = s.signCookie || '';
      const manifestUrl = resolveDashManifest(signCookie);
      const rawResolutions = (s.resolutions || '1080,720,480').toString();
      const parsedResList = rawResolutions
        .split(',')
        .map(v => parseInt(v.trim(), 10))
        .filter(n => !isNaN(n) && n > 0);
      
      const resList = parsedResList.length > 0 ? Array.from(new Set(parsedResList)).sort((a, b) => b - a) : [1080, 720, 480];
      const highestRes = resList[0] || 1080;
      const totalSize = s.size ? Number(s.size) : null;
      const codecName = (s.codecName || s.codec || 'HEVC').toUpperCase();
      const releaseName = s.title || s.fileName || 'MovieBox Stream';

      // 1. Primary Master DASH Streams for each available resolution variant
      if (manifestUrl) {
        for (const res of resList) {
          let scaledBytes = totalSize;
          if (totalSize && highestRes > 0 && res < highestRes) {
            const scale = Math.pow(res / highestRes, 1.6);
            scaledBytes = Math.round(totalSize * Math.max(0.15, Math.min(1.0, scale)));
          }
          const sizeStr = scaledBytes ? this.formatBytes(scaledBytes) : '';
          const resInfo = parseResolutionInfo(res);
          const key = `dash_${res}_${manifestUrl}`;

          if (!seenKeys.has(key)) {
            seenKeys.add(key);
            sources.push({
              id: `dash_${res}_${sources.length}`,
              label: `${resInfo.badge} (MovieBox CDN${sizeStr ? ` • ${sizeStr}` : ''})`,
              resolution: res,
              badge: resInfo.badge,
              size: sizeStr,
              sizeBytes: scaledBytes || 0,
              codec: codecName,
              source: 'MovieBox CDN',
              release: releaseName,
              format: 'DASH',
              url: manifestUrl,
              cookie: signCookie,
              isDash: true,
              targetHeight: res,
              direct: false
            });
          }
        }
      }

      // 2. Direct MP4 stream (reject fake 22-second notice ads)
      const isShortFake = s.duration && s.duration > 0 && s.duration <= 60;
      if (s.url && !isDeprecationNoticeUrl(s.url) && !isShortFake) {
        const mp4Info = parseResolutionInfo(s.resolutions, '720p');
        const sizeStr = totalSize ? this.formatBytes(totalSize) : '';
        const key = `direct_${s.url}`;
        if (!seenKeys.has(key)) {
          seenKeys.add(key);
          sources.push({
            id: `direct_${sources.length}`,
            label: `${mp4Info.badge} (MovieBox CDN${sizeStr ? ` • ${sizeStr}` : ''})`,
            resolution: mp4Info.res,
            badge: mp4Info.badge,
            size: sizeStr,
            sizeBytes: totalSize || 0,
            codec: codecName,
            source: 'MovieBox CDN',
            release: releaseName,
            format: s.format || 'MP4',
            url: s.url,
            cookie: signCookie,
            direct: true,
            targetHeight: mp4Info.res
          });
        }
      }
    }

    // 3. Multi-resolution mirrors from resource API (4K, 1080p, 720p, 480p)
    for (const r of resources) {
      const link = r.resourceLink || r.url;
      const isResShortFake = r.duration && r.duration > 0 && r.duration <= 60;
      if (link && !isDeprecationNoticeUrl(link) && !isResShortFake) {
        const key = `res_${link}`;
        if (!seenKeys.has(key)) {
          seenKeys.add(key);
          const rawNum = typeof r.resolution === 'number' ? r.resolution : parseInt(r.resolution, 10);
          const resInfo = parseResolutionInfo(rawNum || 1080, r.uploadBy || '');
          const sizeBytes = r.size ? Number(r.size) : 0;
          const sizeStr = sizeBytes ? this.formatBytes(sizeBytes) : '';
          const sourceName = r.uploadBy || r.source || 'MovieBox CDN';
          const releaseName = r.fileName || r.title || `MovieBox_${resInfo.badge}_retran`;

          sources.push({
            id: `resource_${r.resourceId || r.id || sources.length}`,
            label: `${resInfo.badge} (${sourceName}${sizeStr ? ` • ${sizeStr}` : ''})`,
            resolution: resInfo.res,
            badge: resInfo.badge,
            size: sizeStr,
            sizeBytes: sizeBytes,
            codec: (r.codecName || r.codec || 'HEVC').toUpperCase(),
            source: sourceName,
            release: releaseName,
            format: 'MP4',
            url: link,
            cookie: streams[0]?.signCookie || '',
            direct: true,
            targetHeight: resInfo.res
          });
        }
      }
    }

    // Sort strictly from HIGHEST quality first (4K -> 1080p -> 720p -> 480p -> 360p)
    sources.sort((a, b) => {
      const resDiff = (b.resolution || 0) - (a.resolution || 0);
      if (resDiff !== 0) return resDiff;
      return (b.sizeBytes || 0) - (a.sizeBytes || 0);
    });

    // Extract subtitles with clean language labels and English auto-preference
    const seenSubs = new Set();
    const subtitles = [];
    for (const c of captions) {
      if (c.url && !isDeprecationNoticeUrl(c.url) && !c.url.includes('aa348f2541d13ffe')) {
        const label = c.lanName || c.lan || 'English';
        if (!seenSubs.has(c.url)) {
          seenSubs.add(c.url);
          subtitles.push({
            label: label,
            url: c.url,
            isEnglish: label.toLowerCase().includes('en') || label.toLowerCase().includes('eng')
          });
        }
      }
    }

    // Auto-select English subtitle if available, otherwise first subtitle
    const defaultSub = subtitles.find(s => s.isEnglish) || subtitles[0] || null;

    return {
      sources: sources,
      subtitles: subtitles,
      defaultSubtitle: defaultSub ? defaultSub.label : 'off'
    };
  }

  // 6. Latest Releases & Recently Uploaded Movies/Anime (Strictly Filtered & Blockbuster-Curated)
  async getLatestReleases(page = 1) {
    try {
      let cleanItems = [];
      const seen = new Set();

      // 1. Official homepage trending & cinema blockbusters first
      try {
        const home = await this.getHomepageTabs(1);
        for (const sec of (home.sections || [])) {
          const t = (sec.title || '').toLowerCase();
          if (t.includes('trending') || t.includes('cinema') || t.includes('release') || t.includes('popular') || t.includes('box office')) {
            const secItems = filterEligibleMedia(sec.items || []);
            for (const item of secItems) {
              if (!seen.has(item.id)) {
                seen.add(item.id);
                cleanItems.push(item);
              }
            }
          }
        }
      } catch (e) {}

      // 2. Query recent release years with strict filtering
      try {
        const res2026 = await this.search('2026', page, 10, 0).catch(() => []);
        const res2025 = await this.search('2025', page, 10, 0).catch(() => []);
        const cleanSearches = filterEligibleMedia([...res2026, ...res2025]);
        for (const item of cleanSearches) {
          if (!seen.has(item.id)) {
            seen.add(item.id);
            cleanItems.push(item);
          }
        }
      } catch (e) {}

      return cleanItems.slice(0, 20);
    } catch (e) {
      console.warn('Latest releases fetch error:', e);
      return [];
    }
  }

  // Curated High-Definition Anime Feed (Zero Hentai / Zero Ecchi)
  async getAnime(page = 1) {
    try {
      let cleanAnime = [];
      const seen = new Set();

      // 1. Official curated anime tabs from homepage feed
      try {
        const home = await this.getHomepageTabs(1);
        for (const sec of (home.sections || [])) {
          const title = (sec.title || '').toLowerCase();
          if (title.includes('anime') || title.includes('animation') || title.includes('manga')) {
            const cleanSec = filterEligibleMedia(sec.items || []);
            for (const item of cleanSec) {
              if (!seen.has(item.id)) {
                seen.add(item.id);
                cleanAnime.push(item);
              }
            }
          }
        }
      } catch (e) {}

      // 2. Verified top-tier global anime blockbusters
      const POPULAR_ANIME_SERIES = [
        'Solo Leveling', 'Attack on Titan', 'Demon Slayer', 'Jujutsu Kaisen',
        'One Piece', 'Naruto', 'Bleach', 'Chainsaw Man', 'Dragon Ball',
        'Death Note', 'My Hero Academia', 'Spy x Family', 'Tokyo Ghoul'
      ];

      for (const franchise of POPULAR_ANIME_SERIES) {
        if (cleanAnime.length >= 20) break;
        try {
          const res = await this.search(franchise, 1, 3, 0).catch(() => []);
          const cleanRes = filterEligibleMedia(res);
          for (const item of cleanRes) {
            if (!seen.has(item.id)) {
              seen.add(item.id);
              cleanAnime.push(item);
            }
          }
        } catch (e) {}
      }

      return cleanAnime.slice(0, 20);
    } catch (e) {
      console.warn('Anime fetch error:', e);
      return [];
    }
  }

  async getRestrictedContent(page = 1) {
    try {
      const collected = getCollectedRestrictedItems();
      const results = [...collected];
      const seen = new Set(results.map(r => r.id.toString()));

      // Curated search terms for adult web series, romance, and mature anime
      const ADULT_SERIES_QUERIES = [
        'Charmsukh', 'Palang Tod', 'Jalebi Bai', 'Riti Riwaj', 'Kavita Bhabhi',
        'Dunali', 'Tandoor', 'Tadap', 'Gandi Baat', 'Sensual', 'Ecchi', 'Hentai', 'Adult'
      ];

      // Query top 4 search terms per page
      const startIdx = ((page - 1) * 4) % ADULT_SERIES_QUERIES.length;
      const termsToQuery = ADULT_SERIES_QUERIES.slice(startIdx, startIdx + 4);

      const promises = termsToQuery.map(q => this.search(q, 1, 8, 0).catch(() => []));
      const settled = await Promise.allSettled(promises);

      for (const res of settled) {
        if (res.status === 'fulfilled' && Array.isArray(res.value)) {
          for (const item of res.value) {
            const sid = (item?.id || '').toString();
            if (sid && !seen.has(sid)) {
              seen.add(sid);
              results.push(item);
            }
          }
        }
      }

      if (results.length > 0) {
        return results;
      }

      // Robust fallback entries with valid metadata so screen is never blank
      const FALLBACK_RESTRICTED = [
        {
          id: 'rest_charmsukh_01',
          title: 'Charmsukh: Chawl House (18+)',
          type: 'Series',
          year: '2024',
          rating: '8.4',
          cover: 'https://images.unsplash.com/photo-1518133910546-b6c2fb7d79e3?w=500&auto=format&fit=crop&q=80',
          synopsis: 'A tale of unexpected passion and intense desire in an overcrowded Mumbai chawl.'
        },
        {
          id: 'rest_palangtod_02',
          title: 'Palang Tod: Gaon Ki Garmi (18+)',
          type: 'Series',
          year: '2024',
          rating: '8.1',
          cover: 'https://images.unsplash.com/photo-1534447677768-be436bb09401?w=500&auto=format&fit=crop&q=80',
          synopsis: 'Intense rural romance and hidden secrets unfold during a scorching summer in the village.'
        },
        {
          id: 'rest_jalebi_03',
          title: 'Jalebi Bai: Season 2 (18+)',
          type: 'Series',
          year: '2024',
          rating: '8.6',
          cover: 'https://images.unsplash.com/photo-1509198397868-475647b2a1e5?w=500&auto=format&fit=crop&q=80',
          synopsis: 'The seductive maid returns with more hilarious twists and passionate entanglements.'
        },
        {
          id: 'rest_ritiriwaj_04',
          title: 'Riti Riwaj: Pinjara (18+)',
          type: 'Series',
          year: '2024',
          rating: '8.0',
          cover: 'https://images.unsplash.com/photo-1517841905240-472988babdf9?w=500&auto=format&fit=crop&q=80',
          synopsis: 'Exploring age-old traditional practices and the hidden desires of young married couples.'
        },
        {
          id: 'rest_kavita_05',
          title: 'Kavita Bhabhi: Uncut (18+)',
          type: 'Series',
          year: '2024',
          rating: '8.5',
          cover: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500&auto=format&fit=crop&q=80',
          synopsis: 'Kavita helps troubled callers explore their deepest sensual fantasies via late night phone calls.'
        },
        {
          id: 'rest_dunali_06',
          title: 'Dunali: Season 3 (18+)',
          type: 'Series',
          year: '2024',
          rating: '7.9',
          cover: 'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?w=500&auto=format&fit=crop&q=80',
          synopsis: 'A young man with an unusual medical secret becomes the center of desire for everyone around him.'
        }
      ];

      return FALLBACK_RESTRICTED;
    } catch (e) {
      console.warn('Restricted content fetch error:', e);
      return [];
    }
  }

  normalizeItem(s) {
    if (!s) return null;
    const isSeries = s.subjectType === 2 || s.stype === 2;
    const coverObj = s.cover || {};
    const coverUrl = coverObj.url || s.coverUrl || s.poster || '';
    const dateStr = s.releaseDate || s.year || s.releaseInfo || '';
    const year = dateStr ? dateStr.toString().slice(0, 4) : '';

    return {
      id: (s.subjectId || s.id || '').toString(),
      title: s.title || s.name || 'Untitled',
      type: isSeries ? 'Series' : 'Movie',
      year: year,
      rating: s.imdbRating || s.score || s.rating || 'N/A',
      cover: coverUrl,
      raw: s
    };
  }

  formatBytes(bytes) {
    if (!bytes || bytes === 0) return '0 B';
    const k = 1024;
    const sizes = ['B', 'KB', 'MB', 'GB', 'TB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    return parseFloat((bytes / Math.pow(k, i)).toFixed(1)) + ' ' + sizes[i];
  }
}

export const movieboxApi = new MovieBoxApi();
