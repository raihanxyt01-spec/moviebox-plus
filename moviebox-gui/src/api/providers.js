// Multi-provider registry and language translations
import { movieboxApi } from './moviebox';
import { fourkhdApi } from './fourkhd';

export const PROVIDERS = [
  { id: 'moviebox', name: 'MovieBox', desc: 'Fast High-Definition Stream & Series (Default)', icon: 'Film' },
  { id: 'fourkhdhub', name: '4K HD Hub for you', desc: 'Ultra HD 4K, BCORE & IMAX Web Streams', icon: 'Sparkles' },
  { id: 'dramachi', name: 'Dramachi', desc: 'Asian Dramas (Kdrama, Cdrama, Jdrama)', icon: 'Tv' },
  { id: 'livetv', name: 'Live TV (IPTV)', desc: 'Live Channels & Broadcast Streams', icon: 'Radio' },
];

export const LANGUAGES = [
  { code: 'en', label: 'English', native: 'English' },
  { code: 'bn', label: 'Bengali', native: 'বাংলা' },
  { code: 'hi', label: 'Hindi', native: 'हिन्दी' },
  { code: 'es', label: 'Spanish', native: 'Español' },
];

export const TRANSLATIONS = {
  en: {
    discover: 'Discover',
    latest: 'Latest',
    movies: 'Movies',
    series: 'Series',
    downloads: 'Downloads',
    favorites: 'Favorites',
    searchPlaceholder: 'Search movies, series (e.g. Fast, Fallout)...',
    watchNow: 'Watch Now',
    details: 'Details',
    download: 'Download',
    nextEpisode: 'Next Episode',
    prevEpisode: 'Previous Episode',
    episodes: 'Episodes & Seasons',
    quality: 'Quality',
    audio: 'Audio Track',
    subtitles: 'Subtitles',
    updateAvailable: 'Update Available!',
    vlcExternal: 'Open in VLC',
    changeProvider: 'Provider',
    changeLanguage: 'Language',
  },
  bn: {
    discover: 'আবিষ্কার করুন',
    latest: 'নতুন মুক্তি',
    movies: 'চলচ্চিত্র',
    series: 'সিরিজ',
    downloads: 'ডাউনলোডকৃত',
    favorites: 'পছন্দসমূহ',
    searchPlaceholder: 'সিনেমা বা সিরিজ খুঁজুন...',
    watchNow: 'এখনই দেখুন',
    details: 'বিস্তারিত',
    download: 'ডাউনলোড',
    nextEpisode: 'পরবর্তী পর্ব',
    prevEpisode: 'পূর্ববর্তী পর্ব',
    episodes: 'পর্ব ও সিজন',
    quality: 'গুণমান',
    audio: 'অডিও ট্র্যাক',
    subtitles: 'সাবটাইটেল',
    updateAvailable: 'আপডেট উপলব্ধ!',
    vlcExternal: 'ভিএলসিতে চালান',
    changeProvider: 'প্রোভাইডার',
    changeLanguage: 'ভাষা',
  },
  hi: {
    discover: 'खोजें',
    latest: 'ताज़ा रिलीज़',
    movies: 'फ़िल्में',
    series: 'वेब सीरीज़',
    downloads: 'डाउनलोड्स',
    favorites: 'पसंदीदा',
    searchPlaceholder: 'फ़िल्में या सीरीज़ खोजें...',
    watchNow: 'अभी देखें',
    details: 'विवरण',
    download: 'डाउनलोड करें',
    nextEpisode: 'अगला एपिसोड',
    prevEpisode: 'पिछला एपिसोड',
    episodes: 'एपिसोड और सीज़न',
    quality: 'क्वालिटी',
    audio: 'ऑडियो ट्रैक',
    subtitles: 'सबटाइटल',
    updateAvailable: 'अपडेट उपलब्ध है!',
    vlcExternal: 'वीएलसी में खोलें',
    changeProvider: 'प्रदाता',
    changeLanguage: 'भाषा',
  },
  es: {
    discover: 'Descubrir',
    latest: 'Recientes',
    movies: 'Películas',
    series: 'Series',
    downloads: 'Descargas',
    favorites: 'Favoritos',
    searchPlaceholder: 'Buscar películas, series...',
    watchNow: 'Ver Ahora',
    details: 'Detalles',
    download: 'Descargar',
    nextEpisode: 'Siguiente Episodio',
    prevEpisode: 'Episodio Anterior',
    episodes: 'Episodios y Temporadas',
    quality: 'Calidad',
    audio: 'Audio',
    subtitles: 'Subtítulos',
    updateAvailable: '¡Actualización Disponible!',
    vlcExternal: 'Abrir en VLC',
    changeProvider: 'Proveedor',
    changeLanguage: 'Idioma',
  }
};

// Dramachi client adapter (for Asian Dramas)
class DramachiApi {
  async search(query) {
    try {
      const url = `https://api.nodeobjects.com/?interface=search_v2&keyword=${encodeURIComponent(query)}&page=1`;
      const res = await fetch(url);
      if (!res.ok) return [];
      const json = await res.json();
      const list = json.list || json.items || [];
      return list.map(item => ({
        id: `dramachi_${item.id || item.title_id}`,
        title: item.title || item.name || 'Untitled',
        type: 'Series',
        year: (item.release_date || item.year || '').toString().slice(0, 4),
        rating: item.score || 'N/A',
        cover: item.thumbnail ? `https://static.nodeobjects.com/thumbnail/${item.thumbnail}` : '',
        provider: 'dramachi',
        raw: item
      }));
    } catch {
      return [];
    }
  }
}

export const dramachiApi = new DramachiApi();
export { fourkhdApi };
