import React, { useState, useEffect, useMemo } from 'react';
import { Search, Filter, Calendar, Clapperboard, Tv, Sparkles, X, Clock, Trash2, Film, Star, ShieldCheck } from 'lucide-react';
import MediaCard from './MediaCard';
import { filterEligibleMedia, isExplicitContent } from '../utils/contentFilter';

const GENRES = [
  'All Genres', 'Action', 'Adventure', 'Comedy', 'Drama', 'Horror', 
  'Sci-Fi', 'Thriller', 'Animation', 'Romance', 'Fantasy', 'Crime', 'Mystery'
];

const CONTENT_TYPES = [
  { id: 'all', label: 'All Content' },
  { id: 'movie', label: 'Movies' },
  { id: 'series', label: 'TV Series' },
  { id: 'anime', label: 'Anime' },
];

const YEARS = ['All Years', '2026', '2025', '2024', '2023', '2022', '2021', '2020'];

export default function SearchPortal({
  query,
  onSearch,
  results,
  onSelectItem,
  onPlayItem,
  favorites,
  onToggleFavorite,
  isLoading,
  allowRestricted = false
}) {
  const [searchInput, setSearchInput] = useState(query || '');
  const [selectedType, setSelectedType] = useState('all');
  const [selectedGenre, setSelectedGenre] = useState('All Genres');
  const [selectedYear, setSelectedYear] = useState('All Years');
  const [recentSearches, setRecentSearches] = useState(() => {
    try {
      return JSON.parse(localStorage.getItem('mb_recent_searches') || '[]');
    } catch {
      return [];
    }
  });

  useEffect(() => {
    setSearchInput(query || '');
  }, [query]);

  // If initial results is empty on landing, automatically populate with trending catalog
  useEffect(() => {
    if ((!results || results.length === 0) && !isLoading && !query) {
      if (onSearch) onSearch('', 0, 'All');
    }
  }, []);

  // Execute search and update history
  const handlePerformSearch = (text) => {
    const term = (text || '').trim();
    const typeCode = selectedType === 'movie' ? 1 : (selectedType === 'series' ? 2 : 0);
    
    if (onSearch) {
      onSearch(term, typeCode, selectedGenre);
    }

    if (term) {
      setRecentSearches(prev => {
        const updated = [term, ...prev.filter(item => item.toLowerCase() !== term.toLowerCase())].slice(0, 8);
        localStorage.setItem('mb_recent_searches', JSON.stringify(updated));
        return updated;
      });
    }
  };

  const handleSelectGenre = (genre) => {
    setSelectedGenre(genre);
    const typeCode = selectedType === 'movie' ? 1 : (selectedType === 'series' ? 2 : 0);
    if (onSearch) {
      onSearch(searchInput.trim(), typeCode, genre);
    }
  };

  const handleSelectType = (typeId) => {
    setSelectedType(typeId);
    let typeCode = 0;
    if (typeId === 'movie') typeCode = 1;
    else if (typeId === 'series') typeCode = 2;

    if (typeId === 'anime') {
      if (onSearch) onSearch('', 0, 'Animation');
    } else {
      if (onSearch) onSearch(searchInput.trim(), typeCode, selectedGenre);
    }
  };

  const handleClearHistory = () => {
    setRecentSearches([]);
    localStorage.removeItem('mb_recent_searches');
  };

  // Filter results client-side by type, genre, year, and content restriction
  const filteredResults = useMemo(() => {
    let list = filterEligibleMedia(results);

    // Type filter
    if (selectedType === 'movie') {
      const movies = list.filter(item => item.type === 'Movie');
      if (movies.length > 0) list = movies;
    } else if (selectedType === 'series') {
      const series = list.filter(item => item.type === 'Series');
      if (series.length > 0) list = series;
    } else if (selectedType === 'anime') {
      const animes = list.filter(item => {
        const title = (item.title || '').toLowerCase();
        const raw = (item.raw?.genre || '').toLowerCase();
        return title.includes('anime') || raw.includes('anime') || raw.includes('animation');
      });
      if (animes.length > 0) list = animes;
    }

    // Genre filter
    if (selectedGenre !== 'All' && selectedGenre !== 'All Genres') {
      const match = selectedGenre.toLowerCase();
      const genreMatched = list.filter(item => {
        const raw = (item.raw?.genre || item.genre || '').toLowerCase();
        const genres = Array.isArray(item.raw?.genres) 
          ? item.raw.genres.map(g => g.toLowerCase()) 
          : (Array.isArray(item.genres) ? item.genres.map(g => g.toLowerCase()) : []);
        return raw.includes(match) || genres.some(g => g.includes(match));
      });
      if (genreMatched.length > 0) {
        list = genreMatched;
      }
    }

    // Year filter
    if (selectedYear !== 'All Years') {
      const yearMatched = list.filter(item => (item.year || '').toString() === selectedYear);
      if (yearMatched.length > 0) list = yearMatched;
    }

    return list;
  }, [results, selectedType, selectedGenre, selectedYear, allowRestricted]);

  return (
    <div className="space-y-6">
      
      {/* Search Header Banner */}
      <div className="bg-gradient-to-r from-surface to-surfaceHover/80 p-5 sm:p-7 rounded-3xl border border-surfaceHover shadow-xl space-y-4">
        <div>
          <h2 className="text-xl sm:text-2xl font-black text-white flex items-center gap-2.5">
            <Search className="w-6 h-6 text-accent" />
            Smart Media Search Portal
          </h2>
          <p className="text-xs sm:text-sm text-gray-400 mt-1">
            Search movies, TV series, anime blockbusters, and browse by genre with safe content protection
          </p>
        </div>

        {/* Search Input Box with clear Search Button */}
        <div className="relative flex items-center">
          <Search className="absolute left-4 w-5 h-5 text-gray-400 pointer-events-none" />
          <input
            type="text"
            value={searchInput}
            onChange={(e) => setSearchInput(e.target.value)}
            onKeyDown={(e) => {
              if (e.key === 'Enter') handlePerformSearch(searchInput);
            }}
            placeholder="Search by title, genre, actor, or keyword (e.g. Action, Mummy, Jackal)..."
            className="w-full bg-background/90 text-white placeholder-gray-500 text-sm sm:text-base rounded-2xl pl-12 pr-28 py-3.5 focus:outline-none focus:ring-2 focus:ring-accent border border-surfaceHover shadow-inner transition-all"
          />
          <button
            onClick={() => handlePerformSearch(searchInput)}
            className="absolute right-2 px-5 py-2 rounded-xl bg-accent hover:bg-accentHover text-white font-bold text-xs sm:text-sm shadow-md transition-all active:scale-95"
          >
            Search
          </button>
        </div>

        {/* Recent Searches Pills */}
        {recentSearches.length > 0 && (
          <div className="flex flex-wrap items-center gap-2 pt-1">
            <span className="text-xs font-semibold text-gray-400 flex items-center gap-1.5 mr-1">
              <Clock className="w-3.5 h-3.5" /> Recent:
            </span>
            {recentSearches.map((term, idx) => (
              <button
                key={idx}
                onClick={() => {
                  setSearchInput(term);
                  handlePerformSearch(term);
                }}
                className="px-3 py-1 rounded-xl bg-surface hover:bg-surfaceHover text-xs text-gray-300 hover:text-white border border-surfaceHover/80 transition-all flex items-center gap-1"
              >
                <span>{term}</span>
              </button>
            ))}
            <button
              onClick={handleClearHistory}
              title="Clear search history"
              className="p-1 rounded-lg hover:bg-surfaceHover text-gray-500 hover:text-red-400 transition-colors ml-1"
            >
              <Trash2 className="w-3.5 h-3.5" />
            </button>
          </div>
        )}

        {/* Dedicated Interactive Genre Explorer Pills Bar ("Genre Option") */}
        <div className="space-y-2 pt-2 border-t border-surfaceHover/50">
          <div className="flex items-center justify-between">
            <span className="text-xs font-bold text-gray-300 flex items-center gap-1.5 uppercase tracking-wider">
              <Sparkles className="w-3.5 h-3.5 text-accent" />
              Browse by Genre:
            </span>
            <span className="text-[11px] text-green-400 font-semibold flex items-center gap-1">
              <ShieldCheck className="w-3.5 h-3.5" />
              100% Safe (Zero 18+ / Zero Hentai)
            </span>
          </div>
          <div className="flex items-center gap-1.5 overflow-x-auto pb-1 no-scrollbar">
            {GENRES.map((g) => {
              const isSelected = selectedGenre === g || (g === 'All Genres' && selectedGenre === 'All');
              return (
                <button
                  key={g}
                  onClick={() => handleSelectGenre(g)}
                  className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all whitespace-nowrap border ${
                    isSelected
                      ? 'bg-accent text-white border-accent shadow-md shadow-accent/25 scale-105'
                      : 'bg-surface hover:bg-surfaceHover text-gray-300 hover:text-white border-surfaceHover'
                  }`}
                >
                  {g}
                </button>
              );
            })}
          </div>
        </div>

      </div>

      {/* FILTER CONTROLS BAR */}
      <div className="bg-surface/60 border border-surfaceHover/60 p-4 rounded-2xl flex flex-wrap items-center justify-between gap-4">
        
        {/* Content Type Tabs (All, Movies, TV Series, Anime) */}
        <div className="flex items-center gap-1.5 overflow-x-auto no-scrollbar">
          {CONTENT_TYPES.map(type => (
            <button
              key={type.id}
              onClick={() => handleSelectType(type.id)}
              className={`px-3.5 py-1.5 rounded-xl text-xs font-bold transition-all whitespace-nowrap ${selectedType === type.id ? 'bg-accent text-white shadow-md' : 'bg-surface text-gray-400 hover:text-white'}`}
            >
              {type.label}
            </button>
          ))}
        </div>

        {/* Dropdown Filters (Year & Reset) */}
        <div className="flex items-center gap-2">
          
          {/* Year Filter */}
          <select
            value={selectedYear}
            onChange={(e) => setSelectedYear(e.target.value)}
            className="bg-surface border border-surfaceHover text-gray-200 text-xs font-semibold rounded-xl px-3 py-1.5 focus:outline-none focus:border-accent"
          >
            {YEARS.map(y => (
              <option key={y} value={y}>{y}</option>
            ))}
          </select>

          {/* Reset Filters */}
          {(selectedType !== 'all' || selectedGenre !== 'All Genres' || selectedYear !== 'All Years') && (
            <button
              onClick={() => {
                setSelectedType('all');
                setSelectedGenre('All Genres');
                setSelectedYear('All Years');
                handlePerformSearch(searchInput);
              }}
              className="text-xs text-accent hover:underline font-semibold ml-1"
            >
              Reset
            </button>
          )}
        </div>
      </div>

      {/* RESULTS DISPLAY */}
      <div>
        <div className="flex items-center justify-between mb-4">
          <h3 className="text-base sm:text-lg font-bold text-white flex items-center gap-2">
            <span>Results</span>
            <span className="text-xs font-semibold px-2 py-0.5 rounded-full bg-surfaceHover text-gray-400">
              {filteredResults.length} titles
            </span>
          </h3>
        </div>

        {isLoading ? (
          <div className="py-20 flex flex-col items-center justify-center gap-3">
            <div className="w-8 h-8 rounded-full border-2 border-accent border-t-transparent animate-spin" />
            <p className="text-xs sm:text-sm text-gray-400">Searching catalog...</p>
          </div>
        ) : filteredResults.length > 0 ? (
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-3 sm:gap-4">
            {filteredResults.map(item => (
              <MediaCard
                key={item.id}
                item={item}
                onSelect={(selected) => onSelectItem(selected)}
                onPlay={(played) => onPlayItem(played)}
                isFavorite={favorites.some(f => f.id === item.id)}
                onToggleFavorite={onToggleFavorite}
              />
            ))}
          </div>
        ) : (
          <div className="py-16 text-center bg-surface/30 rounded-3xl border border-surfaceHover/40 p-8 space-y-3">
            <Film className="w-12 h-12 mx-auto text-gray-600" />
            <p className="text-sm font-semibold text-gray-300">No matching titles found.</p>
            <p className="text-xs text-gray-500 max-w-sm mx-auto">
              Try adjusting your search keywords, clearing your filters, or picking a genre above like Action or Adventure.
            </p>
          </div>
        )}
      </div>

    </div>
  );
}
