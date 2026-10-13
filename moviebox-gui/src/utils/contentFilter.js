// Smart Content Classification & Filtering Engine
// Keeps explicitly sexual material out of Home, Featured, Recently Uploaded, Search Suggestions, and Carousels
// Distinguishes ordinary 18+ entertainment (action, horror, thriller) from explicitly sexual material

const EXPLICIT_KEYWORDS = [
  // Anime, Hentai & Japanese Erotic terms
  'anime edition', 'hentai', 'ecchi', 'eromanga', 'doujinshi', 'doujin',
  'smut', 'uncensored', 'bouenkyou', 'shintai sokutei', 'sokutei',
  'otsukai', 'into a beast', 'turned into a beast', 'oppai', 'pantsu',
  'ahegao', 'futanari', 'netorare', 'ntr', 'chikan', 'bakunyuu', 'jav',
  'av idol', 'gravure', 'adult anime', 'eroge', 'eromame', 'yaoi', 'yuri',
  'shoujo ai', 'shounen ai', 'lolicon', 'shotacon',

  // Adult Web Series, Indian Platforms & Erotic Brands
  'ullu', 'kooku', 'primeshots', 'chariot', 'chikooflix', 'hunters',
  'besharams', 'fliz', 'voovi', 'cineprime', 'fenomovies', 'hotmasti',
  'rabbit', 'gupchup', 'neonx', 'boomex', 'moodx', 'bigshots', 'hitprime',
  'jalva', 'savita bhabhi', 'bhabhi', 'aunty', 'pleasure toy',
  'swamp stamp', 'caregiver', 'godfather\'s good girl', 'naughty',
  'curvy girls', 'erotic art', 'sensual art',

  // Pornography, Explicit & Nudity
  'porn', 'porno', 'pornography', 'xxx', 'x-rated', 'r18', 'r-18', '18+ adult',
  'adults only', 'softcore', 'hardcore', 'erotica', 'erotic', 'erotic romance',
  'erotic drama', 'erotic thriller', 'sensual', 'sex tape', 'sexuality',
  'sexual', 'sexology', 'blowjob', 'gangbang', 'creampie', 'milf', 'dilf', 'dildo',
  'masturbat', 'boobs', 'nude', 'nudity', 'naked', 'tits', 'breast',
  'penis', 'vagina', 'cock', 'pussy', 'orgasm', 'threesome', 'orgy',
  'playboy', 'playgirl', 'escort', 'camgirl', 'onlyfans', 'fansly',
  'stripper', 'striptease', 'prostitute', 'voyeur', 'peeping', 'incest',
  'taboo', 'seduction', 'seduce', 'infidelity', 'fetish', 'bdsm', 'bondage',
  'stepmom', 'stepsister', 'stepdaughter', 'stepmother', 'step-sister',
  'step-mom', 'step-daughter'
];

const EXPLICIT_WORD_REGEX = /\b(sex|sexo|sexology|sexy|hentai|ecchi|porn|porno|pornography|xxx|bukkake|gangbang|blowjob|creampie|milf|dilf|dildo|boobs|nude|nudity|naked|tits|penis|vagina|cock|pussy|orgasm|threesome|orgy|stripper|striptease|prostitute|incest|bdsm|bondage|jav|oppai|pantsu|ahegao|futanari|netorare|ntr|eroge|yaoi|yuri|lolicon|shotacon)\b/i;

const EXPLICIT_GENRES = [
  'erotica', 'hentai', 'adult', 'pornography', 'ecchi', 'xxx', 'sensual',
  'adult animation', 'mature romance'
];

export function isExplicitContent(item) {
  if (!item) return false;

  const title = (item.title || item.name || '').toLowerCase();
  const desc = (item.synopsis || item.description || item.intro || '').toLowerCase();
  const rawGenre = (item.genre || item.raw?.genre || '').toLowerCase();
  const rawTags = (
    Array.isArray(item.tags) ? item.tags.join(' ') : 
    (Array.isArray(item.raw?.tags) ? item.raw.tags.join(' ') : 
    (item.tags || item.raw?.tags || item.raw?.tag || ''))
  ).toString().toLowerCase();
  
  const genres = [
    ...(Array.isArray(item.genres) ? item.genres : []),
    ...(Array.isArray(item.raw?.genres) ? item.raw.genres : []),
    ...rawGenre.split(/[,/|]+/)
  ].map(g => (g || '').toString().trim().toLowerCase()).filter(Boolean);

  // 1. Explicit genre check (e.g. 'Adult', 'Hentai', 'Ecchi', 'Erotica')
  if (genres.some(g => EXPLICIT_GENRES.some(eg => g.includes(eg) || eg.includes(g)))) return true;
  if (EXPLICIT_GENRES.some(eg => rawGenre.includes(eg))) return true;

  // 2. Strict word-boundary regex check on title
  if (EXPLICIT_WORD_REGEX.test(title)) return true;

  // 3. Explicit keywords in title (strict whole word or substring match)
  if (EXPLICIT_KEYWORDS.some(kw => title.includes(kw))) return true;

  // 4. Word-boundary regex or keywords in tags
  if (EXPLICIT_WORD_REGEX.test(rawTags)) return true;
  if (EXPLICIT_KEYWORDS.some(kw => rawTags.includes(kw))) return true;

  // 5. Strong explicit keywords in description
  const strongDescKeywords = [
    'hardcore', 'softcore porn', 'explicit sex', 'hentai anime', 
    'erotic romance', 'erotic drama', 'anime edition', 'adult web series',
    'erotic thriller', 'sensual massage', 'uncensored', 'sexology'
  ];
  if (strongDescKeywords.some(kw => desc.includes(kw))) return true;
  if (EXPLICIT_WORD_REGEX.test(desc)) return true;

  return false;
}

export function classifyContent(item) {
  if (!item) return { isExplicit: false, category: 'Other', isSeries: false };

  const isExplicit = isExplicitContent(item);
  const isSeries = item.type === 'Series' || item.subjectType === 2 || item.stype === 2;
  const title = (item.title || item.name || '').toLowerCase();
  const rawGenre = (item.genre || '').toLowerCase();
  const genres = Array.isArray(item.genres) ? item.genres.map(g => g.toLowerCase()) : [];

  let category = 'Other';
  if (isExplicit) {
    category = 'Restricted / Adult';
  } else if (title.includes('anime') || rawGenre.includes('anime') || genres.includes('anime') || rawGenre.includes('animation') || genres.includes('animation')) {
    category = 'Anime';
  } else if (isSeries) {
    category = 'TV Series';
  } else {
    category = 'Movies';
  }

  return {
    isExplicit,
    category,
    isSeries
  };
}

const collectedRestrictedMap = new Map();

export function collectRestrictedItem(item) {
  if (item && item.id) {
    const key = item.id.toString();
    if (!collectedRestrictedMap.has(key)) {
      collectedRestrictedMap.set(key, item);
      try {
        const stored = JSON.parse(localStorage.getItem('mb_collected_restricted') || '[]');
        if (!stored.some(s => s.id?.toString() === key)) {
          stored.unshift(item);
          localStorage.setItem('mb_collected_restricted', JSON.stringify(stored.slice(0, 100)));
        }
      } catch (e) {}
    }
  }
}

export function getCollectedRestrictedItems() {
  try {
    const stored = JSON.parse(localStorage.getItem('mb_collected_restricted') || '[]');
    for (const item of stored) {
      if (item && item.id) collectedRestrictedMap.set(item.id.toString(), item);
    }
  } catch (e) {}
  return Array.from(collectedRestrictedMap.values());
}

export function filterEligibleMedia(items, allowRestricted = false) {
  if (!Array.isArray(items)) return [];
  if (allowRestricted) return items;
  return items.filter(item => {
    const explicit = isExplicitContent(item);
    if (explicit) {
      collectRestrictedItem(item);
    }
    return !explicit;
  });
}

export function getRestrictedMedia(items) {
  if (!Array.isArray(items)) return [];
  return items.filter(item => isExplicitContent(item));
}

export function getRestrictedSettings() {
  try {
    const enabled = localStorage.getItem('mb_restricted_enabled') === 'true';
    const pin = localStorage.getItem('mb_restricted_pin') || '';
    return { enabled, pin };
  } catch (e) {
    return { enabled: false, pin: '' };
  }
}

export function saveRestrictedSettings(enabled, pin = '') {
  try {
    localStorage.setItem('mb_restricted_enabled', enabled ? 'true' : 'false');
    if (pin) localStorage.setItem('mb_restricted_pin', pin);
  } catch (e) {}
}

export function getWatchHistory() {
  try {
    const raw = localStorage.getItem('mb_watch_history');
    return raw ? JSON.parse(raw) : [];
  } catch (e) {
    return [];
  }
}

export function saveWatchHistoryItem(item, currentTime, duration, season = 0, episode = 0) {
  if (!item || !item.id) return;
  try {
    const history = getWatchHistory();
    const isSeries = item.type === 'Series';
    const entryId = isSeries ? `${item.id}_s${season}_e${episode}` : item.id.toString();

    const newRecord = {
      id: entryId,
      mediaId: item.id.toString(),
      title: item.title,
      cover: item.cover,
      type: item.type || (isSeries ? 'Series' : 'Movie'),
      year: item.year || '',
      season: Number(season) || 0,
      episode: Number(episode) || 0,
      currentTime: Number(currentTime) || 0,
      duration: Number(duration) || 0,
      progress: duration > 0 ? Math.round((currentTime / duration) * 100) : 0,
      completed: duration > 0 && currentTime / duration > 0.9,
      updatedAt: Date.now(),
      raw: item
    };

    const existingIdx = history.findIndex(h => h.id === entryId || (h.mediaId === item.id.toString() && h.season === season && h.episode === episode));
    if (existingIdx >= 0) {
      history[existingIdx] = newRecord;
    } else {
      history.unshift(newRecord);
    }

    // Keep top 50 entries
    const trimmed = history.slice(0, 50);
    localStorage.setItem('mb_watch_history', JSON.stringify(trimmed));
  } catch (e) {}
}

export function removeWatchHistoryItem(id) {
  try {
    const history = getWatchHistory().filter(h => h.id !== id && h.mediaId !== id);
    localStorage.setItem('mb_watch_history', JSON.stringify(history));
    return history;
  } catch (e) {
    return [];
  }
}

export function clearWatchHistory() {
  try {
    localStorage.removeItem('mb_watch_history');
  } catch (e) {}
}
