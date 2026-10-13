import React, { useState, useEffect, useRef } from 'react';
import { 
  Search, Film, Tv, Star, X, Loader2, Play, Sparkles, 
  RefreshCw, Globe, Layers, Download, Shield, ShieldAlert, Check, Menu 
} from 'lucide-react';
import { movieboxApi } from '../api/moviebox';
import { PROVIDERS, LANGUAGES, TRANSLATIONS } from '../api/providers';
import { filterEligibleMedia, getRestrictedSettings } from '../utils/contentFilter';
import ContentFilterSettingsModal from './ContentFilterSettingsModal';

export default function Navbar({ 
  onSelectMedia, 
  onFullSearch, 
  activeTab, 
  setActiveTab, 
  onRefreshData,
  currentProvider,
  onChangeProvider,
  currentLanguage,
  onChangeLanguage,
  onRestrictedToggled,
  preferredPlayer = 'vlc',
  onTogglePlayerEngine,
  onToggleDrawer
}) {
  const [query, setQuery] = useState('');
  const [suggestions, setSuggestions] = useState([]);
  const [isOpen, setIsOpen] = useState(false);
  const [isLoading, setIsLoading] = useState(false);
  const [showProviderMenu, setShowProviderMenu] = useState(false);
  const [showLangMenu, setShowLangMenu] = useState(false);
  const [showPlayerMenu, setShowPlayerMenu] = useState(false);
  const [showFilterModal, setShowFilterModal] = useState(false);
  const [restrictedEnabled, setRestrictedEnabled] = useState(() => getRestrictedSettings().enabled);
  
  const searchRef = useRef(null);
  const searchSeqRef = useRef(0);
  const providerRef = useRef(null);
  const langRef = useRef(null);
  const playerRef = useRef(null);

  const t = TRANSLATIONS[currentLanguage] || TRANSLATIONS.en;

  // Debounced instant search (typing e.g. 'F' brings instant suggestions with posters)
  useEffect(() => {
    if (!query.trim()) {
      setSuggestions([]);
      setIsOpen(false);
      setIsLoading(false);
      return;
    }

    const currentSeq = ++searchSeqRef.current;
    setIsLoading(true);
    const timer = setTimeout(async () => {
      try {
        const results = await movieboxApi.instantSuggest(query.trim());
        if (searchSeqRef.current === currentSeq) {
          setSuggestions(filterEligibleMedia(results, false));
          setIsOpen(true);
        }
      } catch (err) {
        if (searchSeqRef.current === currentSeq) {
          console.error('Instant suggest failed:', err);
        }
      } finally {
        if (searchSeqRef.current === currentSeq) {
          setIsLoading(false);
        }
      }
    }, 220);

    return () => clearTimeout(timer);
  }, [query]);

  // Close dropdowns on outside click
  useEffect(() => {
    function handleClickOutside(event) {
      if (searchRef.current && !searchRef.current.contains(event.target)) {
        setIsOpen(false);
      }
      if (providerRef.current && !providerRef.current.contains(event.target)) {
        setShowProviderMenu(false);
      }
      if (langRef.current && !langRef.current.contains(event.target)) {
        setShowLangMenu(false);
      }
      if (playerRef.current && !playerRef.current.contains(event.target)) {
        setShowPlayerMenu(false);
      }
    }
    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  const handleSearchSubmit = () => {
    if (query.trim()) {
      setIsOpen(false);
      onFullSearch(query.trim());
    } else {
      setActiveTab('search');
    }
  };

  const handleKeyDown = (e) => {
    if (e.key === 'Enter') {
      handleSearchSubmit();
    }
  };

  const handleSelect = (item) => {
    setIsOpen(false);
    setQuery('');
    onSelectMedia(item);
  };

  const activeProviderObj = PROVIDERS.find(p => p.id === currentProvider) || PROVIDERS[0];
  const activeLangObj = LANGUAGES.find(l => l.code === currentLanguage) || LANGUAGES[0];

  return (
    <header className="sticky top-0 z-40 bg-background/90 backdrop-blur-md border-b border-surfaceHover px-3 sm:px-6 py-2.5 sm:py-3 transition-all w-full">
      <div className="w-full max-w-7xl mx-auto flex items-center justify-between gap-2 sm:gap-4">
        
        {/* Brand & Nav */}
        <div className="flex items-center gap-2 sm:gap-3.5 shrink-0">
          {/* Hamburger Menu Toggle Button (Opens Left Drawer) */}
          <button
            onClick={onToggleDrawer}
            aria-label="Open Navigation Drawer"
            className="p-2 sm:p-2.5 rounded-xl bg-surface hover:bg-surfaceHover text-gray-200 hover:text-white border border-surfaceHover transition-colors flex items-center justify-center shrink-0 shadow-sm"
            title="Open Menu"
          >
            <Menu className="w-5 h-5 text-gray-300" />
          </button>

          <div 
            onClick={() => { setActiveTab('home'); setQuery(''); }} 
            className="flex items-center gap-2 cursor-pointer group shrink-0"
            title="MovieBox+ Home"
          >
            <div className="w-8 h-8 sm:w-9 sm:h-9 rounded-xl bg-accent flex items-center justify-center shadow-lg shadow-accent/25 group-hover:scale-105 transition-transform">
              <Film className="w-4 h-4 sm:w-5 sm:h-5 text-white" />
            </div>
            <div className="flex flex-col">
              <span className="text-lg sm:text-xl font-extrabold tracking-tight text-white flex items-center">
                MovieBox<span className="text-accent font-black">+</span>
              </span>
            </div>
          </div>

          {/* Navigation Links - displayed on lg+ screens */}
          <nav className="hidden lg:flex items-center gap-1 text-xs font-semibold text-gray-400">
            <button 
              onClick={() => setActiveTab('home')}
              className={`px-2.5 py-1.5 rounded-lg transition-colors ${activeTab === 'home' ? 'text-white bg-surface' : 'hover:text-white hover:bg-surface/50'}`}
            >
              {t.discover}
            </button>
            <button 
              onClick={() => setActiveTab('latest')}
              className={`flex items-center gap-1 px-2.5 py-1.5 rounded-lg transition-colors ${activeTab === 'latest' ? 'text-white bg-surface' : 'hover:text-white hover:bg-surface/50'}`}
            >
              <Sparkles className="w-3.5 h-3.5 text-accent" />
              <span>{t.latest}</span>
            </button>
            <button 
              onClick={() => setActiveTab('movies')}
              className={`px-2.5 py-1.5 rounded-lg transition-colors ${activeTab === 'movies' ? 'text-white bg-surface' : 'hover:text-white hover:bg-surface/50'}`}
            >
              {t.movies}
            </button>
            <button 
              onClick={() => setActiveTab('series')}
              className={`px-2.5 py-1.5 rounded-lg transition-colors ${activeTab === 'series' ? 'text-white bg-surface' : 'hover:text-white hover:bg-surface/50'}`}
            >
              {t.series}
            </button>
            <button 
              onClick={() => setActiveTab('search')}
              className={`flex items-center gap-1 px-2.5 py-1.5 rounded-lg transition-colors font-bold ${activeTab === 'search' ? 'text-white bg-accent shadow-sm' : 'hover:text-white hover:bg-surface/50'}`}
            >
              <Search className="w-3.5 h-3.5" />
              <span>Search</span>
            </button>
            <button 
              onClick={() => setActiveTab('downloads')}
              className={`flex items-center gap-1 px-2.5 py-1.5 rounded-lg transition-colors ${activeTab === 'downloads' ? 'text-white bg-surface' : 'hover:text-white hover:bg-surface/50'}`}
            >
              <Download className="w-3.5 h-3.5 text-primary" />
              <span>{t.downloads}</span>
            </button>
            <button 
              onClick={() => setActiveTab('favorites')}
              className={`px-2.5 py-1.5 rounded-lg transition-colors ${activeTab === 'favorites' ? 'text-white bg-surface' : 'hover:text-white hover:bg-surface/50'}`}
            >
              {t.favorites}
            </button>
            {restrictedEnabled && (
              <button 
                onClick={() => setActiveTab('restricted')}
                className={`flex items-center gap-1 px-2.5 py-1.5 rounded-lg transition-colors ${activeTab === 'restricted' ? 'text-white bg-red-600/30 border border-red-500/50' : 'text-red-400/80 hover:text-red-300 hover:bg-red-500/10'}`}
              >
                <ShieldAlert className="w-3.5 h-3.5 text-red-400" />
                <span>18+</span>
              </button>
            )}
          </nav>
        </div>

        {/* Real-time Search Bar with Flexible Responsive Width */}
        <div ref={searchRef} className="relative flex-1 min-w-[120px] sm:min-w-[180px] md:min-w-[240px] max-w-md mx-1 sm:mx-2">
          <div className="relative flex items-center">
            <button
              type="button"
              onClick={handleSearchSubmit}
              title="Search"
              className="absolute left-2 sm:left-2.5 p-1 text-gray-400 hover:text-white transition-colors focus:outline-none z-10"
            >
              <Search className="w-3.5 h-3.5 sm:w-4 sm:h-4" />
            </button>
            <input
              type="text"
              value={query}
              onChange={(e) => setQuery(e.target.value)}
              onFocus={() => { if (suggestions.length > 0 || query.trim()) setIsOpen(true); }}
              onKeyDown={handleKeyDown}
              placeholder={t.searchPlaceholder}
              className="w-full bg-surface text-white placeholder-gray-400 text-xs sm:text-sm rounded-xl pl-8 sm:pl-10 pr-9 sm:pr-10 py-2 sm:py-2.5 focus:outline-none focus:ring-2 focus:ring-accent/70 border border-transparent focus:border-accent/40 transition-all shadow-inner"
            />
            {isLoading && (
              <Loader2 className={`absolute ${query ? 'right-8' : 'right-2.5'} w-3.5 h-3.5 sm:w-4 sm:h-4 text-accent animate-spin pointer-events-none`} />
            )}
            {query && (
              <button 
                type="button"
                onClick={() => { setQuery(''); setSuggestions([]); setIsOpen(false); }}
                className="absolute right-2 text-gray-400 hover:text-white p-1 rounded-lg hover:bg-surfaceHover/80 transition-colors z-10"
                title="Clear search"
              >
                <X className="w-3.5 h-3.5" />
              </button>
            )}
          </div>

          {/* Instant Rich Poster Dropdown */}
          {isOpen && query.trim() && (
            <div className="absolute left-0 right-0 sm:left-auto sm:right-0 md:left-0 md:right-0 top-full mt-2 w-full min-w-[300px] sm:min-w-[380px] bg-surface/95 backdrop-blur-xl border border-surfaceHover rounded-2xl shadow-2xl overflow-hidden z-50 animate-in fade-in slide-in-from-top-2 duration-150">
              <div className="px-3.5 py-2 text-xs font-semibold text-gray-400 border-b border-surfaceHover/70 flex items-center justify-between">
                <span>{isLoading ? 'Searching...' : `Suggestions for "${query}"`}</span>
                <span className="text-[11px] text-gray-400">Press Enter for full search</span>
              </div>

              {isLoading && suggestions.length === 0 ? (
                <div className="p-6 flex items-center justify-center gap-2 text-gray-400 text-xs">
                  <Loader2 className="w-4 h-4 text-accent animate-spin" />
                  <span>Finding matches...</span>
                </div>
              ) : suggestions.length === 0 ? (
                <div className="p-5 text-center text-xs text-gray-400">
                  <p>No instant suggestions for "{query}"</p>
                  <button
                    type="button"
                    onClick={handleSearchSubmit}
                    className="mt-2 text-accent hover:underline font-semibold"
                  >
                    Press Enter or click here for deep search →
                  </button>
                </div>
              ) : (
                <div className="max-h-96 overflow-y-auto divide-y divide-surfaceHover/40 p-1">
                  {suggestions.map((item) => (
                    <div
                      key={item.id}
                      onClick={() => handleSelect(item)}
                      className="flex items-center gap-3.5 p-2 rounded-xl hover:bg-surfaceHover/80 cursor-pointer transition-colors group"
                    >
                      {/* Poster Thumbnail */}
                      <div className="w-12 h-16 rounded-lg bg-surfaceHover overflow-hidden flex-shrink-0 relative shadow-md">
                        {item.cover ? (
                          <img 
                            src={item.cover} 
                            alt={item.title} 
                            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-200"
                            loading="lazy"
                          />
                        ) : (
                          <div className="w-full h-full flex items-center justify-center text-gray-400">
                            <Film className="w-5 h-5" />
                          </div>
                        )}
                        <div className="absolute inset-0 bg-black/20 group-hover:bg-transparent transition-colors" />
                      </div>

                      {/* Metadata */}
                      <div className="flex-1 min-w-0">
                        <h4 className="text-sm font-semibold text-white truncate group-hover:text-accent transition-colors">
                          {item.title}
                        </h4>
                        <div className="flex items-center gap-2 mt-1 text-xs text-gray-400">
                          <span className={`px-1.5 py-0.5 rounded text-[10px] font-bold tracking-wider uppercase ${
                            item.type === 'Series' ? 'bg-primary/20 text-primary' : 'bg-accent/20 text-accent'
                          }`}>
                            {item.type}
                          </span>
                          {item.year && <span>{item.year}</span>}
                          {item.rating && item.rating !== 'N/A' && (
                            <span className="flex items-center gap-0.5 text-yellow-400 font-semibold">
                              <Star className="w-3 h-3 fill-yellow-400" />
                              {item.rating}
                            </span>
                          )}
                        </div>
                      </div>

                      {/* Quick Play Icon */}
                      <div className="w-8 h-8 rounded-full bg-surfaceHover group-hover:bg-accent flex items-center justify-center text-gray-400 group-hover:text-white transition-all flex-shrink-0">
                        <Play className="w-3.5 h-3.5 fill-current ml-0.5" />
                      </div>
                    </div>
                  ))}
                </div>
              )}

              {/* View All Button */}
              {suggestions.length > 0 && (
                <div 
                  onClick={handleSearchSubmit}
                  className="p-2.5 text-center text-xs font-semibold text-accent hover:bg-accent/10 cursor-pointer border-t border-surfaceHover/70 transition-colors"
                >
                  View all results for "{query}" →
                </div>
              )}
            </div>
          )}
        </div>

        {/* Action Controls: Provider Switcher, Language Switcher, Safe Mode, Live Refresh */}
        <div className="shrink-0 flex items-center gap-1.5 sm:gap-2">
          
          {/* Provider Switcher Dropdown */}
          <div ref={providerRef} className="relative shrink-0">
            <button
              onClick={() => setShowProviderMenu(!showProviderMenu)}
              className="flex items-center gap-1.5 p-2 sm:px-2.5 sm:py-1.5 rounded-xl bg-surface hover:bg-surfaceHover text-gray-200 text-xs font-semibold border border-surfaceHover transition-all shadow-sm shrink-0"
              title={`Provider: ${activeProviderObj.name}`}
            >
              <Layers className="w-3.5 h-3.5 text-accent shrink-0" />
              <span className="hidden md:inline font-bold">{activeProviderObj.name}</span>
            </button>

            {showProviderMenu && (
              <div className="absolute right-0 top-full mt-2 w-52 bg-surface/95 backdrop-blur-xl border border-surfaceHover rounded-2xl shadow-2xl z-50 p-1.5 divide-y divide-surfaceHover">
                <div className="px-3 py-1.5 text-[10px] font-bold text-gray-400 uppercase tracking-wider">
                  Select Provider
                </div>
                <div className="py-1">
                  {PROVIDERS.map(p => (
                    <button
                      key={p.id}
                      onClick={() => {
                        onChangeProvider(p.id);
                        setShowProviderMenu(false);
                      }}
                      className={`w-full text-left px-3 py-2 rounded-xl text-xs font-medium flex flex-col gap-0.5 transition-colors ${
                        p.id === currentProvider ? 'bg-accent text-white' : 'hover:bg-surfaceHover text-gray-200'
                      }`}
                    >
                      <span className="font-bold">{p.name}</span>
                      <span className="text-[10px] text-gray-400 opacity-90">{p.desc}</span>
                    </button>
                  ))}
                </div>
              </div>
            )}
          </div>

          {/* Language Switcher Dropdown */}
          <div ref={langRef} className="relative shrink-0">
            <button
              onClick={() => setShowLangMenu(!showLangMenu)}
              className="flex items-center gap-1.5 p-2 sm:px-2.5 sm:py-1.5 rounded-xl bg-surface hover:bg-surfaceHover text-gray-200 text-xs font-semibold border border-surfaceHover transition-all shadow-sm shrink-0"
              title={`Language: ${activeLangObj.native}`}
            >
              <Globe className="w-3.5 h-3.5 text-primary shrink-0" />
              <span className="hidden md:inline font-bold">{activeLangObj.native}</span>
            </button>

            {showLangMenu && (
              <div className="absolute right-0 top-full mt-2 w-36 bg-surface/95 backdrop-blur-xl border border-surfaceHover rounded-2xl shadow-2xl z-50 p-1.5">
                <div className="px-2.5 py-1 text-[10px] font-bold text-gray-400 uppercase tracking-wider border-b border-surfaceHover">
                  Language
                </div>
                <div className="py-1">
                  {LANGUAGES.map(l => (
                    <button
                      key={l.code}
                      onClick={() => {
                        onChangeLanguage(l.code);
                        setShowLangMenu(false);
                      }}
                      className={`w-full text-left px-3 py-1.5 rounded-xl text-xs font-medium transition-colors ${
                        l.code === currentLanguage ? 'bg-accent text-white' : 'hover:bg-surfaceHover text-gray-200'
                      }`}
                    >
                      {l.native} ({l.label})
                    </button>
                  ))}
                </div>
              </div>
            )}
          </div>

          {/* External Player Engine Switcher Dropdown (VLC, PotPlayer, MX Player, System) */}
          <div ref={playerRef} className="relative shrink-0">
            <button
              onClick={() => setShowPlayerMenu(!showPlayerMenu)}
              className="flex items-center gap-1.5 p-2 sm:px-2.5 sm:py-1.5 rounded-xl bg-orange-600/20 hover:bg-orange-600/30 text-orange-400 text-xs font-bold border border-orange-500/40 transition-all shadow-sm shrink-0"
              title={`Active Player: ${
                preferredPlayer === 'potplayer' ? 'PotPlayer (External)' :
                preferredPlayer === 'mxplayer' ? 'MX Player (External)' :
                preferredPlayer === 'system' ? 'System Player (External)' :
                'VLC Media Player (External Lossless)'
              }`}
            >
              <Film className="w-3.5 h-3.5 text-orange-400 shrink-0" />
              <span className="hidden sm:inline">
                {preferredPlayer === 'potplayer' ? 'PotPlayer' :
                 preferredPlayer === 'mxplayer' ? 'MX Player' :
                 preferredPlayer === 'system' ? 'System Player' :
                 'VLC'}
              </span>
            </button>

            {showPlayerMenu && (
              <div className="absolute right-0 top-full mt-2 w-64 bg-surface/98 backdrop-blur-xl border border-surfaceHover rounded-2xl shadow-2xl z-50 p-2 divide-y divide-surfaceHover">
                <div className="px-2.5 py-1.5 text-[10px] font-bold text-gray-400 uppercase tracking-wider">
                  Select External Video Player
                </div>
                <div className="py-1.5 space-y-1">
                  {/* VLC Media Player */}
                  <button
                    onClick={() => {
                      if (onTogglePlayerEngine) onTogglePlayerEngine('vlc');
                      setShowPlayerMenu(false);
                    }}
                    className={`w-full text-left px-3 py-2 rounded-xl text-xs transition-all flex flex-col ${
                      preferredPlayer === 'vlc' ? 'bg-orange-600 text-white font-bold' : 'hover:bg-surfaceHover text-gray-200'
                    }`}
                  >
                    <div className="flex items-center justify-between">
                      <span className="font-bold">🎬 VLC Media Player</span>
                      {preferredPlayer === 'vlc' && <Check className="w-3.5 h-3.5" />}
                    </div>
                    <span className="text-[10px] opacity-80 mt-0.5">Lossless Direct3D11 / Native sharp quality</span>
                  </button>

                  {/* PC: Daum PotPlayer */}
                  {!((typeof window !== 'undefined') && (window.Capacitor !== undefined || /Android/i.test(navigator.userAgent))) && (
                    <button
                      onClick={() => {
                        if (onTogglePlayerEngine) onTogglePlayerEngine('potplayer');
                        setShowPlayerMenu(false);
                      }}
                      className={`w-full text-left px-3 py-2 rounded-xl text-xs transition-all flex flex-col ${
                        preferredPlayer === 'potplayer' ? 'bg-yellow-600 text-white font-bold' : 'hover:bg-surfaceHover text-gray-200'
                      }`}
                    >
                      <div className="flex items-center justify-between">
                        <span className="font-bold">🎯 Daum PotPlayer</span>
                        {preferredPlayer === 'potplayer' && <Check className="w-3.5 h-3.5" />}
                      </div>
                      <span className="text-[10px] opacity-80 mt-0.5">Ultra low latency PC hardware acceleration</span>
                    </button>
                  )}

                  {/* Android: MX Player & System Chooser */}
                  {((typeof window !== 'undefined') && (window.Capacitor !== undefined || /Android/i.test(navigator.userAgent))) && (
                    <>
                      <button
                        onClick={() => {
                          if (onTogglePlayerEngine) onTogglePlayerEngine('mxplayer');
                          setShowPlayerMenu(false);
                        }}
                        className={`w-full text-left px-3 py-2 rounded-xl text-xs transition-all flex flex-col ${
                          preferredPlayer === 'mxplayer' ? 'bg-blue-600 text-white font-bold' : 'hover:bg-surfaceHover text-gray-200'
                        }`}
                      >
                        <div className="flex items-center justify-between">
                          <span className="font-bold">📱 MX Player (Ad / Pro)</span>
                          {preferredPlayer === 'mxplayer' && <Check className="w-3.5 h-3.5" />}
                        </div>
                        <span className="text-[10px] opacity-80 mt-0.5">Hardware decoder & subtitle gestures</span>
                      </button>

                      <button
                        onClick={() => {
                          if (onTogglePlayerEngine) onTogglePlayerEngine('system');
                          setShowPlayerMenu(false);
                        }}
                        className={`w-full text-left px-3 py-2 rounded-xl text-xs transition-all flex flex-col ${
                          preferredPlayer === 'system' ? 'bg-purple-600 text-white font-bold' : 'hover:bg-surfaceHover text-gray-200'
                        }`}
                      >
                        <div className="flex items-center justify-between">
                          <span className="font-bold">⚙️ System Player (Chooser)</span>
                          {preferredPlayer === 'system' && <Check className="w-3.5 h-3.5" />}
                        </div>
                        <span className="text-[10px] opacity-80 mt-0.5">Open in any installed media player app</span>
                      </button>
                    </>
                  )}
                </div>
              </div>
            )}
          </div>

          {/* Live Refresh (Live API sync) */}
          <button
            onClick={onRefreshData}
            title="Refresh Live API Feed"
            className="p-2 rounded-xl bg-surface hover:bg-surfaceHover text-gray-300 hover:text-white transition-colors border border-surfaceHover/80 shrink-0"
          >
            <RefreshCw className="w-3.5 h-3.5 hover:rotate-180 transition-transform duration-500" />
          </button>
        </div>

        {/* Mobile / Tablet Quick Navigation Bar ensuring Search & all tabs are visible on all screen sizes */}
        <div className="flex lg:hidden items-center justify-between border-t border-surfaceHover/50 pt-2 mt-2 gap-1 overflow-x-auto no-scrollbar w-full">
          <button 
            onClick={() => { setActiveTab('home'); setQuery(''); }}
            className={`px-3 py-1 rounded-xl text-xs font-semibold whitespace-nowrap transition-colors ${activeTab === 'home' ? 'text-white bg-surface' : 'text-gray-400 hover:text-white'}`}
          >
            {t.discover}
          </button>
          <button 
            onClick={() => setActiveTab('movies')}
            className={`px-3 py-1 rounded-xl text-xs font-semibold whitespace-nowrap transition-colors ${activeTab === 'movies' ? 'text-white bg-surface' : 'text-gray-400 hover:text-white'}`}
          >
            {t.movies}
          </button>
          <button 
            onClick={() => setActiveTab('series')}
            className={`px-3 py-1 rounded-xl text-xs font-semibold whitespace-nowrap transition-colors ${activeTab === 'series' ? 'text-white bg-surface' : 'text-gray-400 hover:text-white'}`}
          >
            {t.series}
          </button>
          <button 
            onClick={() => { setActiveTab('search'); }}
            className={`flex items-center gap-1.5 px-3 py-1 rounded-xl text-xs font-bold whitespace-nowrap transition-colors ${activeTab === 'search' ? 'text-white bg-accent shadow-sm' : 'text-accent hover:bg-surface/50'}`}
          >
            <Search className="w-3.5 h-3.5" />
            <span>Search</span>
          </button>
          <button 
            onClick={() => setActiveTab('downloads')}
            className={`flex items-center gap-1 px-3 py-1 rounded-xl text-xs font-semibold whitespace-nowrap transition-colors ${activeTab === 'downloads' ? 'text-white bg-surface' : 'text-gray-400 hover:text-white'}`}
          >
            <Download className="w-3.5 h-3.5 text-primary" />
            <span>{t.downloads}</span>
          </button>
          <button 
            onClick={() => setActiveTab('favorites')}
            className={`px-3 py-1 rounded-xl text-xs font-semibold whitespace-nowrap transition-colors ${activeTab === 'favorites' ? 'text-white bg-surface' : 'text-gray-400 hover:text-white'}`}
          >
            {t.favorites}
          </button>
        </div>

      </div>

      {/* Content & Privacy Settings Modal */}
      <ContentFilterSettingsModal
        isOpen={showFilterModal}
        onClose={() => setShowFilterModal(false)}
        onSettingsChanged={() => {
          const s = getRestrictedSettings();
          setRestrictedEnabled(s.enabled);
          if (onRestrictedToggled) onRestrictedToggled(s.enabled);
        }}
      />
    </header>
  );
}
