import React, { useState, useEffect } from 'react';
import Navbar from './components/Navbar';
import HeroBanner from './components/HeroBanner';
import MediaGrid from './components/MediaGrid';
import DetailsModal from './components/DetailsModal';
import DownloadsTab from './components/DownloadsTab';
import SearchPortal from './components/SearchPortal';
import ContinueWatchingShelf from './components/ContinueWatchingShelf';
import SideDrawer from './components/SideDrawer';
import VaultPinModal from './components/VaultPinModal';
import { movieboxApi } from './api/moviebox';
import { dramachiApi, fourkhdApi, desidubanimeApi, TRANSLATIONS } from './api/providers';
import { getWatchHistory, getRestrictedSettings, filterEligibleMedia, saveWatchHistoryItem } from './utils/contentFilter';
import { getPreferredPlayer, setPreferredPlayer, PLAYER_ENGINES, launchExternalPlayback } from './utils/vlcLauncher';
import ErrorBoundary from './components/ErrorBoundary';
import ExternalPlayerMissingModal from './components/ExternalPlayerMissingModal';
import StreamSetupModal from './components/StreamSetupModal';
import { Loader2, Film, Sparkles, RefreshCw, ShieldAlert, Search, Download, Star, X, CheckCircle2 } from 'lucide-react';

export default function App() {
  const [activeTab, setActiveTab] = useState('home'); // home, latest, movies, series, anime, search, downloads, favorites, restricted
  const [currentProvider, setCurrentProvider] = useState('moviebox');
  const [currentLanguage, setCurrentLanguage] = useState('en');
  
  const [featuredItem, setFeaturedItem] = useState(null);
  const [featuredItems, setFeaturedItems] = useState([]);
  const [homeSections, setHomeSections] = useState([]);
  const [latestItems, setLatestItems] = useState([]);
  const [animeItems, setAnimeItems] = useState([]);
  const [movieItems, setMovieItems] = useState([]);
  const [seriesItems, setSeriesItems] = useState([]);
  const [restrictedItems, setRestrictedItems] = useState([]);
  const [searchResults, setSearchResults] = useState([]);
  const [searchQuery, setSearchQuery] = useState('');
  const [isLoading, setIsLoading] = useState(true);
  
  // Watch History & Privacy Settings
  const [watchHistory, setWatchHistory] = useState(() => getWatchHistory());
  const [restrictedEnabled, setRestrictedEnabled] = useState(() => getRestrictedSettings().enabled);

  // Modals, Drawers & Playback Engine
  const [isDrawerOpen, setIsDrawerOpen] = useState(false);
  const [isVaultPinModalOpen, setIsVaultPinModalOpen] = useState(false);
  const [selectedMedia, setSelectedMedia] = useState(null);
  const [shelfQualityModal, setShelfQualityModal] = useState(null);
  const [playerMissingModal, setPlayerMissingModal] = useState({ isOpen: false, player: 'vlc', platform: 'pc' });
  const [preferredPlayer, setPreferredPlayerState] = useState(getPreferredPlayer);
  const [vlcActiveInfo, setVlcActiveInfo] = useState(null);
  const [vlcLoadingToast, setVlcLoadingToast] = useState(null);
  const [downloadToast, setDownloadToast] = useState(null);
  const [activeDownloadsCount, setActiveDownloadsCount] = useState(0);
  
  // Favorites stored in local storage
  const [favorites, setFavorites] = useState(() => {
    try {
      return JSON.parse(localStorage.getItem('mb_favorites') || '[]');
    } catch {
      return [];
    }
  });

  const t = TRANSLATIONS[currentLanguage] || TRANSLATIONS.en;

  // Poll active downloads count for badges
  useEffect(() => {
    const updateActiveCount = () => {
      if (window.electronAPI && window.electronAPI.getDownloads) {
        window.electronAPI.getDownloads().then(res => {
          if (res && res.active) {
            setActiveDownloadsCount(res.active.length);
          }
        }).catch(() => {});
      }
    };
    updateActiveCount();
    const interval = setInterval(updateActiveCount, 2500);
    return () => clearInterval(interval);
  }, []);

  // Load homepage data on startup
  useEffect(() => {
    setMovieItems([]);
    setSeriesItems([]);
    setAnimeItems([]);
    loadHomepage();
  }, [currentProvider]);

  const loadHomepage = async () => {
    setIsLoading(true);
    try {
      if (currentProvider === 'dramachi') {
        // Load Asian dramas
        const dramas = await dramachiApi.search('Drama');
        setFeaturedItem(dramas[0] || null);
        setFeaturedItems(dramas.slice(0, 8));
        setHomeSections([{ title: 'Popular Asian Dramas', items: dramas }]);
        setLatestItems(dramas);
      } else if (currentProvider === 'fourkhdhub') {
        // Load 4K HD Hub for you
        const releases = await fourkhdApi.getHomepage(1);
        const topReleases = releases.slice(0, 10);
        setFeaturedItem(topReleases[0] || null);
        setFeaturedItems(topReleases);
        setHomeSections([
          { title: 'Ultra HD 4K & IMAX Web Releases (4K HD Hub for you)', items: releases.slice(0, 16) },
          { title: 'Popular Ultra HD 2160p & 1080p Streams', items: releases.slice(16) }
        ]);
        setLatestItems(releases);
      } else if (currentProvider === 'desidubanime') {
        // Load DesiDubAnime (Hindi & Multi-Audio Dubbed Anime)
        const animeList = await desidubanimeApi.getLatest(1, 24);
        const topAnime = animeList.slice(0, 8);
        setFeaturedItem(topAnime[0] || null);
        setFeaturedItems(topAnime);
        setHomeSections([
          { title: 'Latest Hindi & Multi-Audio Dubbed Anime (DesiDubAnime)', items: animeList.slice(0, 12) },
          { title: 'Popular Dubbed Series & Episodes', items: animeList.slice(12) }
        ]);
        setLatestItems(animeList);
        setAnimeItems(animeList);
      } else {
        // Standard MovieBox live feed with parallel fetching of latest & anime
        const [tabRes, latestRes, animeRes] = await Promise.allSettled([
          movieboxApi.getHomepageTabs(1),
          movieboxApi.getLatestReleases(1),
          movieboxApi.getAnime(1)
        ]);

        const data = tabRes.status === 'fulfilled' ? tabRes.value : { banners: [], sections: [] };
        const cleanBanners = filterEligibleMedia(data.banners || [], false);
        const topSectionItems = (data.sections?.[0]?.items || []).slice(0, 5);
        
        // Multi-slide trending carousel
        const allFeatured = [...cleanBanners, ...topSectionItems].filter((v, i, a) => a.findIndex(t => t.id === v.id) === i);
        setFeaturedItems(allFeatured);
        if (allFeatured.length > 0) {
          setFeaturedItem(allFeatured[0]);
        }

        const cleanSections = (data.sections || []).map(sec => ({
          ...sec,
          items: filterEligibleMedia(sec.items || [], false)
        })).filter(sec => sec.items.length > 0);
        setHomeSections(cleanSections);

        if (latestRes.status === 'fulfilled' && latestRes.value) {
          setLatestItems(filterEligibleMedia(latestRes.value, false));
        }
        if (animeRes.status === 'fulfilled' && animeRes.value) {
          setAnimeItems(filterEligibleMedia(animeRes.value, false));
        }
      }
    } catch (err) {
      console.error('Failed to load live feed:', err);
    } finally {
      setIsLoading(false);
    }
  };

  // Fetch categorized lists when switching tabs
  useEffect(() => {
    if (activeTab === 'movies' && movieItems.length === 0) {
      setIsLoading(true);
      if (currentProvider === 'fourkhdhub') {
        fourkhdApi.search('2025').then(items => { setMovieItems(items || []); setIsLoading(false); }).catch(() => setIsLoading(false));
      } else {
        movieboxApi.search('2025', 1, 20, 1)
          .then(items => { setMovieItems(filterEligibleMedia(items || [], false)); setIsLoading(false); })
          .catch(() => setIsLoading(false));
      }
    } else if (activeTab === 'series' && seriesItems.length === 0) {
      setIsLoading(true);
      if (currentProvider === 'fourkhdhub') {
        fourkhdApi.search('Series').then(items => { setSeriesItems(items || []); setIsLoading(false); }).catch(() => setIsLoading(false));
      } else {
        movieboxApi.search('Series', 1, 20, 2)
          .then(items => { setSeriesItems(filterEligibleMedia(items || [], false)); setIsLoading(false); })
          .catch(() => setIsLoading(false));
      }
    } else if (activeTab === 'anime' && animeItems.length === 0) {
      setIsLoading(true);
      if (currentProvider === 'desidubanime') {
        desidubanimeApi.getLatest(1, 24)
          .then(items => { setAnimeItems(items || []); setIsLoading(false); })
          .catch(() => setIsLoading(false));
      } else {
        movieboxApi.getAnime(1)
          .then(items => { setAnimeItems(filterEligibleMedia(items || [], false)); setIsLoading(false); })
          .catch(() => setIsLoading(false));
      }
    } else if (activeTab === 'restricted') {
      setIsLoading(true);
      movieboxApi.getRestrictedContent(1)
        .then(items => { setRestrictedItems(items); setIsLoading(false); })
        .catch(() => setIsLoading(false));
    }
  }, [activeTab, currentProvider]);

  const handleFullSearch = async (query, subjectType = 0, genre = 'All') => {
    setSearchQuery(query || '');
    setActiveTab('search');
    setIsLoading(true);

    try {
      if (currentProvider === 'dramachi') {
        const results = await dramachiApi.search(query || 'Drama');
        setSearchResults(filterEligibleMedia(results, restrictedEnabled));
      } else if (currentProvider === 'fourkhdhub') {
        const results = await fourkhdApi.search(query || '2025');
        setSearchResults(results || []);
      } else if (currentProvider === 'desidubanime') {
        const results = await desidubanimeApi.search(query || 'Anime');
        setSearchResults(results || []);
      } else {
        let results = [];
        const isGenreQuery = genre && genre !== 'All' && genre !== 'All Genres';
        if (isGenreQuery) {
          results = await movieboxApi.getGenreMedia(genre, 1, subjectType);
        } else if (query && query.trim()) {
          results = await movieboxApi.search(query.trim(), 1, 18, subjectType);
        } else if (subjectType === 1) {
          results = await movieboxApi.search('2025', 1, 18, 1);
        } else if (subjectType === 2) {
          results = await movieboxApi.search('Series', 1, 18, 2);
        } else {
          results = await movieboxApi.getLatestReleases(1);
        }
        setSearchResults(filterEligibleMedia(results || [], restrictedEnabled));
      }
    } catch (err) {
      console.error('Full search failed:', err);
      setSearchResults([]);
    } finally {
      setIsLoading(false);
    }
  };

  const handleToggleFavorite = (item) => {
    setFavorites(prev => {
      const exists = prev.some(f => f.id === item.id);
      const updated = exists ? prev.filter(f => f.id !== item.id) : [...prev, item];
      localStorage.setItem('mb_favorites', JSON.stringify(updated));
      return updated;
    });
  };

  const handleTogglePlayerEngine = (engine) => {
    setPreferredPlayer(engine);
    setPreferredPlayerState(engine);
  };

  const startExternalPlayback = async (item, season = 0, episode = 0, sourceObj = null, customSubtitle = null, customDub = null, targetPlayer = null) => {
    const isSeries = item?.type === 'Series';
    const seNum = isSeries ? (season > 0 ? season : 1) : 0;
    const epNum = isSeries ? (episode > 0 ? episode : 1) : 0;

    let source = sourceObj;
    let subtitleUrl = customSubtitle || null;
    const chosenPlayer = targetPlayer || preferredPlayer || 'vlc';

    const subjectToUse = customDub?.subjectId || item?.dubSubjectId || item?.id;

    if (!source && item?.filePath) {
      // Local downloaded video file
      source = { url: item.filePath };
    } else if (!source && (subjectToUse || item?.path || item?.title)) {
      const playerName = chosenPlayer === 'potplayer' ? 'PotPlayer' :
                         chosenPlayer === 'mxplayer' ? 'MX Player' :
                         chosenPlayer === 'system' ? 'System Player' : 'VLC';
      setVlcLoadingToast(`Resolving highest quality stream for ${item?.title || 'video'} in ${playerName}...`);
      try {
        let streams = { sources: [], subtitles: [] };
        const isExplicit4kHd = item?.provider === 'fourkhdhub' || item?.id?.startsWith('fourkhd_') || item?.path;
        const isDesiAnime = item?.provider === 'desidubanime' || item?.id?.startsWith('desidub_');

        if (isDesiAnime) {
          try {
            let epUrl = item?.url || item?.episodeUrl;
            if (!epUrl) {
              const eps = await desidubanimeApi.getEpisodes(item);
              const foundEp = eps.find(e => e.episodeNumber === epNum) || eps[0];
              epUrl = foundEp?.url;
            }
            if (epUrl) {
              const desiStreams = await desidubanimeApi.getPlayStreams(epUrl, epNum);
              if (desiStreams && desiStreams.sources && desiStreams.sources.length > 0) {
                streams = desiStreams;
              }
            }
          } catch (desiErr) {
            console.warn('DesiDubAnime stream fetch failed:', desiErr);
          }
        } else if (isExplicit4kHd) {
          streams = await fourkhdApi.getPlayStreams(item.path || item.id, seNum, epNum);
        } else {
          // 1. First check MovieBox stream server
          if (subjectToUse) {
            try {
              const mbStreams = await movieboxApi.getPlayStreams(subjectToUse, seNum, epNum);
              if (mbStreams && mbStreams.sources && mbStreams.sources.length > 0) {
                streams = mbStreams;
              }
            } catch (err) {
              console.warn('MovieBox stream server check failed:', err);
            }
          }

          // 2. If MovieBox stream server has no streams, check anime provider or switch automatically to 4K HD Hub for you
          if ((!streams.sources || streams.sources.length === 0) && (item?.title || item?.path || item?.id)) {
            const cleanTitle = (item.title || '').replace(/\(\d{4}\)/g, '').replace(/\[.*?\]/g, '').trim();

            // Try DesiDubAnime if item is anime
            if (item.type === 'Anime' || (item.genre || '').toLowerCase().includes('anime')) {
              try {
                const animeResults = await desidubanimeApi.search(cleanTitle);
                if (animeResults && animeResults.length > 0) {
                  const eps = await desidubanimeApi.getEpisodes(animeResults[0]);
                  const foundEp = eps.find(e => e.episodeNumber === epNum) || eps[0];
                  if (foundEp?.url) {
                    const desiStreams = await desidubanimeApi.getPlayStreams(foundEp.url, epNum);
                    if (desiStreams && desiStreams.sources && desiStreams.sources.length > 0) {
                      streams = desiStreams;
                    }
                  }
                }
              } catch (desiErr) {
                console.warn('DesiDubAnime fallback check failed:', desiErr);
              }
            }

            // Fallback to 4K HD Hub for you
            if (!streams.sources || streams.sources.length === 0) {
              try {
                let targetPath = item.path || (item.id?.startsWith('fourkhd_') ? item.id : null);
                if (!targetPath && item.title) {
                  let searchRes = await fourkhdApi.search(cleanTitle);
                  if (!searchRes || searchRes.length === 0) {
                    searchRes = await fourkhdApi.search(item.title);
                  }
                  if (searchRes && searchRes.length > 0) {
                    targetPath = searchRes[0].path || searchRes[0].id;
                  }
                }

                if (targetPath) {
                  const fallbackStreams = await fourkhdApi.getPlayStreams(targetPath, seNum, epNum);
                  if (fallbackStreams && fallbackStreams.sources && fallbackStreams.sources.length > 0) {
                    streams = fallbackStreams;
                  }
                }
              } catch (e) {
                console.error('Failed to resolve 4K HD Hub fallback streams:', e);
              }
            }
          }
        }

        if (streams.sources && streams.sources.length > 0) {
          // Smart quality selection for instant playback:
          // Skip massive 30GB+ raw remuxes that cause long loading and lag unless no other stream exists
          const balancedStream = streams.sources.find(s => {
            const sizeStr = (s.size || '').toLowerCase();
            const match = sizeStr.match(/([\d.]+)\s*gb/);
            const gb = match ? parseFloat(match[1]) : 0;
            if (gb >= 30) return false;
            return s.resolution === 1080 || s.badge?.includes('1080');
          }) || streams.sources.find(s => {
            const sizeStr = (s.size || '').toLowerCase();
            const match = sizeStr.match(/([\d.]+)\s*gb/);
            const gb = match ? parseFloat(match[1]) : 0;
            return gb < 30;
          }) || streams.sources[0];

          source = balancedStream;
          if (source.mirrors && source.mirrors.length > 0 && !source.direct) {
            const resolved = await fourkhdApi.resolveMirror(source.primaryMirror || source.url);
            if (resolved && resolved.url) {
              source = { ...source, url: resolved.url, direct: true };
            }
          }
        }
        if (!subtitleUrl && streams.subtitles && streams.subtitles.length > 0) {
          const match = streams.subtitles.find(s => s.label?.toLowerCase().includes('english') || s.language === 'en') || streams.subtitles[0];
          subtitleUrl = match?.url || null;
        }
      } catch (err) {
        console.error('Failed to resolve stream for external player:', err);
      }
      setVlcLoadingToast(null);
    }

    const streamUrl = typeof source === 'string' ? source : source?.url;
    const cookie = typeof source === 'object' ? source?.cookie : null;

    if (streamUrl) {
      const dubSuffix = customDub ? ` [${customDub.label}]` : '';
      const displayTitle = `${item?.title || 'MovieBox Video'}${dubSuffix}${isSeries ? ` S${seNum}:E${epNum}` : ''}`;
      
      // Save to watch history for shelf
      if (item?.id) {
        saveWatchHistoryItem({
          id: item.id,
          title: item.title,
          cover: item.cover,
          type: item.type,
          season: seNum,
          episode: epNum,
          currentTime: 10,
          duration: 3600,
          timestamp: Date.now()
        });
        setWatchHistory(getWatchHistory());
      }

      const res = await launchExternalPlayback({
        url: streamUrl,
        title: displayTitle,
        subtitleUrl,
        cookie,
        player: chosenPlayer
      });

      setVlcLoadingToast(null);

      if (res && res.notInstalled) {
        setPlayerMissingModal({
          isOpen: true,
          player: res.player || chosenPlayer,
          platform: (window.electronAPI ? 'pc' : (/Android|iPhone|iPad/i.test(navigator.userAgent) ? 'mobile' : 'pc'))
        });
        return res;
      }

      const playerName = chosenPlayer === 'potplayer' ? 'PotPlayer' :
                         chosenPlayer === 'mxplayer' ? 'MX Player' :
                         chosenPlayer === 'system' ? 'System Player' : 'VLC Media Player';

      setVlcActiveInfo({
        item,
        season: seNum,
        episode: epNum,
        title: displayTitle,
        streamUrl,
        cookie,
        dub: customDub,
        player: chosenPlayer,
        playerName
      });

      return res;
    } else {
      setVlcLoadingToast(null);
      alert('Unable to resolve stream link for playback.');
    }
  };

  const startVlcPlayback = startExternalPlayback;

  const handlePlay = (item, season = 0, episode = 0, forceEngine = null, customSource = null, customSubtitle = null, customDub = null) => {
    setSelectedMedia(null);
    startExternalPlayback(
      item,
      Number(season) || 0,
      Number(episode) || 0,
      customSource,
      customSubtitle,
      customDub,
      forceEngine
    );
  };

  const handlePlayOfflineFile = (fileItem) => {
    setSelectedMedia(null);
    startExternalPlayback({
      id: fileItem.id || `offline_${Date.now()}`,
      title: fileItem.title || fileItem.filename || 'Downloaded Video',
      cover: fileItem.cover || '',
      type: 'Movie',
      filePath: fileItem.filePath || fileItem.path || fileItem.url
    }, 0, 0);
  };

  const handleOpenExternalPlayer = async (item, season = 0, episode = 0, sourceObj = null) => {
    return startExternalPlayback(item, season, episode, sourceObj);
  };

  return (
    <div className="min-h-screen bg-background flex flex-col text-gray-100">
      
      {/* Navbar with Multi-Provider, Language, & Left Drawer Toggle */}
      <Navbar
        onSelectMedia={(item) => setSelectedMedia(item)}
        onFullSearch={handleFullSearch}
        activeTab={activeTab}
        setActiveTab={(tab) => {
          setActiveTab(tab);
          setSearchQuery('');
        }}
        onRefreshData={loadHomepage}
        currentProvider={currentProvider}
        onChangeProvider={(p) => setCurrentProvider(p)}
        currentLanguage={currentLanguage}
        onChangeLanguage={(l) => setCurrentLanguage(l)}
        onRestrictedToggled={(enabled) => setRestrictedEnabled(enabled)}
        preferredPlayer={preferredPlayer}
        onTogglePlayerEngine={handleTogglePlayerEngine}
        onToggleDrawer={() => setIsDrawerOpen(prev => !prev)}
      />

      {/* Main Content Area */}
      <main className="flex-1 max-w-7xl w-full mx-auto px-4 sm:px-8 py-6">
        
        {/* Smart Search Portal with Filters & Recent History */}
        {activeTab === 'search' && (
          <SearchPortal
            query={searchQuery}
            onSearch={handleFullSearch}
            results={searchResults}
            onSelectItem={(item) => setSelectedMedia(item)}
            onPlayItem={(item) => handlePlay(item)}
            favorites={favorites}
            onToggleFavorite={handleToggleFavorite}
            isLoading={isLoading}
            allowRestricted={restrictedEnabled}
          />
        )}

        {/* Favorites View */}
        {activeTab === 'favorites' && (
          <MediaGrid
            title={t.favorites}
            items={favorites}
            onSelectItem={(item) => setSelectedMedia(item)}
            onPlayItem={(item) => handlePlay(item)}
            favorites={favorites}
            onToggleFavorite={handleToggleFavorite}
            isLoading={false}
          />
        )}

        {/* Movies Only View */}
        {activeTab === 'movies' && (
          <MediaGrid
            title={t.movies}
            items={movieItems.length > 0 ? movieItems : homeSections.flatMap(s => s.items).filter(i => i.type === 'Movie')}
            onSelectItem={(item) => setSelectedMedia(item)}
            onPlayItem={(item) => handlePlay(item)}
            favorites={favorites}
            onToggleFavorite={handleToggleFavorite}
            showFilter={true}
            isLoading={isLoading}
          />
        )}

        {/* TV Series Only View */}
        {activeTab === 'series' && (
          <MediaGrid
            title={t.series}
            items={seriesItems.length > 0 ? seriesItems : homeSections.flatMap(s => s.items).filter(i => i.type === 'Series')}
            onSelectItem={(item) => setSelectedMedia(item)}
            onPlayItem={(item) => handlePlay(item)}
            favorites={favorites}
            onToggleFavorite={handleToggleFavorite}
            showFilter={true}
            isLoading={isLoading}
          />
        )}

        {/* Anime Only View */}
        {activeTab === 'anime' && (
          <MediaGrid
            title="🎌 Curated Anime Series & Episodes"
            items={animeItems}
            onSelectItem={(item) => setSelectedMedia(item)}
            onPlayItem={(item) => handlePlay(item)}
            favorites={favorites}
            onToggleFavorite={handleToggleFavorite}
            showFilter={true}
            isLoading={isLoading}
          />
        )}

        {/* Downloads Manager View */}
        {activeTab === 'downloads' && (
          <DownloadsTab 
            onPlayLocalFile={handlePlayOfflineFile}
          />
        )}

        {/* Dedicated 18+ Restricted Adult Entertainment View (PIN Protected) */}
        {activeTab === 'restricted' && (
          <div className="space-y-6 animate-in fade-in duration-200">
            <div className="p-5 sm:p-6 rounded-3xl bg-red-950/20 border border-red-500/30 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 shadow-xl">
              <div className="flex items-center gap-3.5">
                <div className="w-11 h-11 rounded-2xl bg-red-600/30 border border-red-500/40 flex items-center justify-center shrink-0">
                  <ShieldAlert className="w-6 h-6 text-red-400" />
                </div>
                <div>
                  <h3 className="text-base sm:text-lg font-black text-white flex items-center gap-2">
                    <span>18+ Restricted Vault</span>
                    <span className="px-2 py-0.5 rounded-full text-[10px] font-black uppercase tracking-wider bg-red-600 text-white">
                      PIN Secured
                    </span>
                  </h3>
                  <p className="text-xs text-gray-400 mt-0.5">
                    Adult web series, cinema & mature titles. Completely hidden and filtered from the home screen.
                  </p>
                </div>
              </div>

              <button
                onClick={() => {
                  sessionStorage.removeItem('mb_vault_unlocked');
                  setActiveTab('home');
                }}
                className="px-4 py-2 rounded-xl bg-surface hover:bg-surfaceHover text-gray-300 hover:text-white text-xs font-bold border border-surfaceHover transition-all shrink-0"
              >
                🔒 Lock & Exit Vault
              </button>
            </div>

            <MediaGrid
              title="🔞 Adult Web Series, Cinema & Erotic Releases"
              items={restrictedItems}
              onSelectItem={(item) => setSelectedMedia(item)}
              onPlayItem={(item) => handlePlay(item)}
              favorites={favorites}
              onToggleFavorite={handleToggleFavorite}
              isLoading={isLoading}
              showFilter={true}
            />
          </div>
        )}

        {/* Recently Uploaded & Latest Releases View */}
        {activeTab === 'latest' && (
          <div className="space-y-8">
            <MediaGrid
              title="🔥 Recently Uploaded Movies & Series (2026/2025)"
              items={latestItems}
              onSelectItem={(item) => setSelectedMedia(item)}
              onPlayItem={(item) => handlePlay(item)}
              favorites={favorites}
              onToggleFavorite={handleToggleFavorite}
              isLoading={isLoading}
              showFilter={true}
            />

            {animeItems.length > 0 && (
              <MediaGrid
                title="🎌 Recent Anime Episodes & Series"
                items={animeItems}
                onSelectItem={(item) => setSelectedMedia(item)}
                onPlayItem={(item) => handlePlay(item)}
                favorites={favorites}
                onToggleFavorite={handleToggleFavorite}
                showFilter={false}
                onViewMore={() => setActiveTab('anime')}
                viewMoreLabel="View All Anime →"
              />
            )}
          </div>
        )}

        {/* Discover / Home View */}
        {activeTab === 'home' && (
          <div className="space-y-8">
            {/* Hero Featured Banner (Auto-sliding Carousel) */}
            <HeroBanner
              items={featuredItems.length > 0 ? featuredItems : (featuredItem ? [featuredItem] : [])}
              item={featuredItem}
              onPlay={(item) => handlePlay(item)}
              onDetails={(item) => setSelectedMedia(item)}
              isFavorite={favorites.some(f => f.id === (featuredItem?.id))}
              onToggleFavorite={handleToggleFavorite}
            />

            {/* Continue Watching Shelf (Auto-saved progress with Quality Setup) */}
            <ContinueWatchingShelf
              historyItems={watchHistory}
              onPlayItem={(item, season, episode) => handlePlay(item, season, episode)}
              onSelectQuality={(item, season, episode) => setShelfQualityModal({ item, season, episode })}
              onRefreshHistory={() => setWatchHistory(getWatchHistory())}
            />

            {/* Dynamic Sections (Live API Stream) */}
            {isLoading ? (
              <div className="py-20 flex flex-col items-center justify-center gap-3">
                <Loader2 className="w-8 h-8 text-accent animate-spin" />
                <p className="text-sm text-gray-400">Syncing live catalog feed...</p>
              </div>
            ) : (
              <>
                {/* Recently Uploaded Shelf with "View More" option */}
                {latestItems.length > 0 && (
                  <MediaGrid
                    title="🚀 Recently Uploaded Releases"
                    items={filterEligibleMedia(latestItems, false).slice(0, 12)}
                    onSelectItem={(item) => setSelectedMedia(item)}
                    onPlayItem={(item) => handlePlay(item)}
                    favorites={favorites}
                    onToggleFavorite={handleToggleFavorite}
                    showFilter={false}
                    onViewMore={() => setActiveTab('latest')}
                    viewMoreLabel="View All Releases →"
                  />
                )}

                {/* Latest Anime Shelf with "View More" option */}
                {animeItems.length > 0 && (
                  <MediaGrid
                    title="🎌 Top Anime & Recent Episodes"
                    items={filterEligibleMedia(animeItems, false).slice(0, 12)}
                    onSelectItem={(item) => setSelectedMedia(item)}
                    onPlayItem={(item) => handlePlay(item)}
                    favorites={favorites}
                    onToggleFavorite={handleToggleFavorite}
                    showFilter={false}
                    onViewMore={() => setActiveTab('anime')}
                    viewMoreLabel="View All Anime →"
                  />
                )}

                {/* Provider Live Sections */}
                {homeSections.length > 0 ? (
                  homeSections.map((section, idx) => (
                    <MediaGrid
                      key={idx}
                      title={section.title}
                      items={section.items}
                      onSelectItem={(item) => setSelectedMedia(item)}
                      onPlayItem={(item) => handlePlay(item)}
                      favorites={favorites}
                      onToggleFavorite={handleToggleFavorite}
                      showFilter={false}
                    />
                  ))
                ) : (
                  <div className="py-20 text-center text-gray-400">
                    <Film className="w-12 h-12 mx-auto mb-3 text-gray-600" />
                    <p>No titles currently available. Please check your internet connection.</p>
                  </div>
                )}
              </>
            )}
          </div>
        )}

      </main>

      {/* Side Navigation Drawer (3 Lines Hamburger Menu on Left) */}
      <SideDrawer
        isOpen={isDrawerOpen}
        onClose={() => setIsDrawerOpen(false)}
        activeTab={activeTab}
        onSelectTab={(tab) => {
          setActiveTab(tab);
          setSearchQuery('');
        }}
        onOpenVault={() => {
          const isUnlocked = sessionStorage.getItem('mb_vault_unlocked') === 'true';
          if (isUnlocked) {
            setActiveTab('restricted');
          } else {
            setIsVaultPinModalOpen(true);
          }
        }}
        activeDownloadsCount={activeDownloadsCount}
      />

      {/* 4-Digit Security PIN Modal for 18+ Restricted Vault */}
      <VaultPinModal
        isOpen={isVaultPinModalOpen}
        onClose={() => setIsVaultPinModalOpen(false)}
        onSuccess={() => {
          sessionStorage.setItem('mb_vault_unlocked', 'true');
          setActiveTab('restricted');
        }}
      />

      {/* Details Modal */}
      {selectedMedia && (
        <DetailsModal
          item={selectedMedia}
          onClose={() => setSelectedMedia(null)}
          onPlay={handlePlay}
          isFavorite={favorites.some(f => f.id === selectedMedia.id)}
          onToggleFavorite={handleToggleFavorite}
          onDownloadStart={(title) => {
            setDownloadToast(`Downloading "${title}" • Added to Download Manager`);
            setTimeout(() => setDownloadToast(null), 4500);
          }}
        />
      )}

      {/* Continue Watching Stream Quality Setup Modal */}
      {shelfQualityModal && (
        <StreamSetupModal
          item={shelfQualityModal.item}
          season={shelfQualityModal.season || 0}
          episode={shelfQualityModal.episode || 0}
          preferredPlayer={preferredPlayer}
          onLaunchExternal={(config) => {
            startExternalPlayback(
              shelfQualityModal.item,
              shelfQualityModal.season || 0,
              shelfQualityModal.episode || 0,
              config.source,
              config.subtitleUrl,
              config.dub,
              config.player
            );
            setShelfQualityModal(null);
          }}
          onClose={() => setShelfQualityModal(null)}
        />
      )}

      {/* External Video Player Required Modal (Deep-link to Store or Official Portals) */}
      <ExternalPlayerMissingModal
        isOpen={playerMissingModal.isOpen}
        player={playerMissingModal.player}
        platform={playerMissingModal.platform}
        onClose={() => setPlayerMissingModal(prev => ({ ...prev, isOpen: false }))}
      />


      {/* Mobile Bottom Navigation Bar (Android & Mobile screens) */}
      <nav className="lg:hidden sticky bottom-0 inset-x-0 bg-background/95 backdrop-blur-2xl border-t border-surfaceHover px-3 py-2 flex items-center justify-around z-40 shadow-2xl">
        <button
          onClick={() => { setActiveTab('home'); setSearchQuery(''); }}
          className={`flex flex-col items-center gap-1 py-1 px-3 rounded-xl transition-all ${
            activeTab === 'home' ? 'text-accent font-bold scale-105' : 'text-gray-400 hover:text-white'
          }`}
        >
          <Film className="w-5 h-5" />
          <span className="text-[10px]">Home</span>
        </button>

        <button
          onClick={() => { setActiveTab('latest'); setSearchQuery(''); }}
          className={`flex flex-col items-center gap-1 py-1 px-3 rounded-xl transition-all ${
            activeTab === 'latest' ? 'text-accent font-bold scale-105' : 'text-gray-400 hover:text-white'
          }`}
        >
          <Sparkles className="w-5 h-5" />
          <span className="text-[10px]">Latest</span>
        </button>

        <button
          onClick={() => { setActiveTab('search'); }}
          className={`flex flex-col items-center gap-1 py-1 px-3 rounded-xl transition-all ${
            activeTab === 'search' ? 'text-accent font-bold scale-105' : 'text-gray-400 hover:text-white'
          }`}
        >
          <Search className="w-5 h-5" />
          <span className="text-[10px]">Search</span>
        </button>

        <button
          onClick={() => { setActiveTab('downloads'); }}
          className={`flex flex-col items-center gap-1 py-1 px-3 rounded-xl transition-all ${
            activeTab === 'downloads' ? 'text-primary font-bold scale-105' : 'text-gray-400 hover:text-white'
          }`}
        >
          <Download className="w-5 h-5" />
          <span className="text-[10px]">Downloads</span>
        </button>

        <button
          onClick={() => { setActiveTab('favorites'); }}
          className={`flex flex-col items-center gap-1 py-1 px-3 rounded-xl transition-all ${
            activeTab === 'favorites' ? 'text-accent font-bold scale-105' : 'text-gray-400 hover:text-white'
          }`}
        >
          <Star className="w-5 h-5" />
          <span className="text-[10px]">Favorites</span>
        </button>

        {restrictedEnabled && (
          <button
            onClick={() => { setActiveTab('restricted'); }}
            className={`flex flex-col items-center gap-1 py-1 px-3 rounded-xl transition-all ${
              activeTab === 'restricted' ? 'text-red-400 font-bold scale-105' : 'text-red-400/60 hover:text-red-300'
            }`}
          >
            <ShieldAlert className="w-5 h-5" />
            <span className="text-[10px]">18+</span>
          </button>
        )}
      </nav>

      {/* Floating External Player Active Playback Banner */}
      {vlcActiveInfo && (
        <aside 
          aria-label="External Player Playback Status"
          className="fixed bottom-20 lg:bottom-6 right-4 sm:right-6 z-50 max-w-md bg-surface/95 backdrop-blur-2xl border border-orange-500/40 rounded-2xl p-4 shadow-2xl shadow-orange-950/40 flex flex-col gap-2.5 animate-in slide-in-from-bottom-5"
        >
          <div className="flex items-center justify-between gap-3">
            <div className="flex items-center gap-2.5 min-w-0">
              <div className="w-8 h-8 rounded-xl bg-orange-600 flex items-center justify-center shrink-0 shadow-lg shadow-orange-600/30">
                <Film className="w-4 h-4 text-white" />
              </div>
              <div className="min-w-0">
                <span className="text-[10px] font-black uppercase tracking-wider text-orange-400 block">
                  Playing in {vlcActiveInfo.playerName || 'External Player'}
                </span>
                <p className="text-xs font-bold text-white truncate max-w-[200px] sm:max-w-xs">
                  {vlcActiveInfo.title}
                </p>
              </div>
            </div>
            <button
              onClick={() => setVlcActiveInfo(null)}
              className="p-1 rounded-lg hover:bg-surfaceHover text-gray-400 hover:text-white transition-colors"
            >
              <X className="w-4 h-4" />
            </button>
          </div>

          {vlcActiveInfo.item?.type === 'Series' && (
            <div className="flex items-center justify-between gap-2 pt-1 border-t border-surfaceHover">
              <div className="flex items-center gap-1.5">
                <button
                  disabled={vlcActiveInfo.episode <= 1}
                  onClick={() => startExternalPlayback(vlcActiveInfo.item, vlcActiveInfo.season, vlcActiveInfo.episode - 1, null, null, vlcActiveInfo.dub, vlcActiveInfo.player)}
                  className="px-2.5 py-1 rounded-lg bg-surfaceHover hover:bg-surfaceHover/80 text-[11px] font-semibold text-gray-300 disabled:opacity-40 transition-colors"
                >
                  ◀ Prev Ep
                </button>
                <button
                  onClick={() => startExternalPlayback(vlcActiveInfo.item, vlcActiveInfo.season, vlcActiveInfo.episode + 1, null, null, vlcActiveInfo.dub, vlcActiveInfo.player)}
                  className="px-2.5 py-1 rounded-lg bg-surfaceHover hover:bg-surfaceHover/80 text-[11px] font-semibold text-gray-300 transition-colors"
                >
                  Next Ep ▶
                </button>
              </div>
              <span className="text-[10px] text-gray-400 font-bold">
                S{vlcActiveInfo.season}:E{vlcActiveInfo.episode}
              </span>
            </div>
          )}
        </aside>
      )}

      {/* VLC Loading Toast */}
      {vlcLoadingToast && (
        <aside 
          aria-label="Resolving VLC Stream"
          className="fixed bottom-24 lg:bottom-8 left-1/2 -translate-x-1/2 z-50 bg-surface/98 border border-orange-500/50 rounded-2xl px-5 py-3 shadow-2xl flex items-center gap-3 backdrop-blur-xl animate-in fade-in"
        >
          <Loader2 className="w-4 h-4 text-orange-400 animate-spin" />
          <span className="text-xs font-bold text-white">{vlcLoadingToast}</span>
        </aside>
      )}

      {/* Live Download Started Toast */}
      {downloadToast && (
        <aside 
          aria-label="Download Status"
          className="fixed top-20 right-4 sm:right-8 z-50 bg-surface/98 border border-green-500/50 rounded-2xl px-5 py-3.5 shadow-2xl flex items-center gap-3 backdrop-blur-xl animate-in slide-in-from-top-4"
        >
          <CheckCircle2 className="w-5 h-5 text-green-400 shrink-0" />
          <span className="text-xs font-bold text-white">{downloadToast}</span>
          <button
            onClick={() => {
              setActiveTab('downloads');
              setDownloadToast(null);
            }}
            className="ml-2 text-xs font-black text-orange-400 hover:text-orange-300 hover:underline"
          >
            View in Downloads →
          </button>
        </aside>
      )}

    </div>
  );
}
