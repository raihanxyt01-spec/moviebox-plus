import React, { useState } from 'react';
import MediaCard from './MediaCard';
import { Film, Tv, Sparkles, Filter } from 'lucide-react';

export default function MediaGrid({ 
  title, 
  items, 
  onSelectItem, 
  onPlayItem, 
  favorites = [], 
  onToggleFavorite, 
  showFilter = true,
  isLoading = false,
  onViewMore = null,
  viewMoreLabel = 'View More →'
}) {
  const [filterType, setFilterType] = useState('ALL'); // ALL, Movie, Series

  const filteredItems = (items || []).filter(item => {
    if (filterType === 'ALL') return true;
    return item.type === filterType;
  });

  return (
    <div className="w-full mb-10">
      {/* Header and Filter Tabs */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 mb-5">
        <div className="flex items-center gap-2.5">
          <h2 className="text-xl sm:text-2xl font-black text-white tracking-tight">
            {title}
          </h2>
          <span className="text-xs font-semibold px-2 py-0.5 rounded-full bg-surface text-gray-400 border border-surfaceHover">
            {filteredItems.length}
          </span>
        </div>

        <div className="flex items-center gap-2 self-start sm:self-auto flex-wrap">
          {showFilter && (
            <div className="flex items-center gap-1.5 p-1 bg-surface rounded-xl border border-surfaceHover/70">
              <button
                onClick={() => setFilterType('ALL')}
                className={`px-3 py-1 rounded-lg text-xs font-semibold transition-all ${
                  filterType === 'ALL' ? 'bg-accent text-white shadow-sm' : 'text-gray-400 hover:text-white'
                }`}
              >
                All
              </button>
              <button
                onClick={() => setFilterType('Movie')}
                className={`px-3 py-1 rounded-lg text-xs font-semibold transition-all flex items-center gap-1 ${
                  filterType === 'Movie' ? 'bg-accent text-white shadow-sm' : 'text-gray-400 hover:text-white'
                }`}
              >
                <Film className="w-3 h-3" />
                Movies
              </button>
              <button
                onClick={() => setFilterType('Series')}
                className={`px-3 py-1 rounded-lg text-xs font-semibold transition-all flex items-center gap-1 ${
                  filterType === 'Series' ? 'bg-accent text-white shadow-sm' : 'text-gray-400 hover:text-white'
                }`}
              >
                <Tv className="w-3 h-3" />
                Series
              </button>
            </div>
          )}

          {onViewMore && (
            <button
              onClick={onViewMore}
              className="flex items-center gap-1 px-3.5 py-1.5 rounded-xl bg-orange-600/20 hover:bg-orange-600/30 text-orange-400 hover:text-white text-xs font-bold border border-orange-500/40 hover:border-orange-500 transition-all shadow-sm"
            >
              <span>{viewMoreLabel}</span>
            </button>
          )}
        </div>
      </div>

      {/* Grid Content */}
      {isLoading ? (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4 sm:gap-6 animate-pulse">
          {[...Array(12)].map((_, i) => (
            <div key={i} className="flex flex-col gap-2">
              <div className="aspect-[2/3] bg-surface rounded-2xl" />
              <div className="h-4 bg-surface rounded w-3/4" />
              <div className="h-3 bg-surface rounded w-1/2" />
            </div>
          ))}
        </div>
      ) : filteredItems.length > 0 ? (
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4 sm:gap-6">
          {filteredItems.map(item => (
            <MediaCard
              key={item.id}
              item={item}
              onClick={onSelectItem}
              onPlay={onPlayItem}
              isFavorite={favorites.some(f => f.id === item.id)}
              onToggleFavorite={onToggleFavorite}
            />
          ))}
        </div>
      ) : (
        <div className="w-full py-16 flex flex-col items-center justify-center text-center bg-surface/40 rounded-3xl border border-surfaceHover/60">
          <Film className="w-12 h-12 text-gray-500 mb-3" />
          <h3 className="text-base font-bold text-white">No items found</h3>
          <p className="text-xs text-gray-400 mt-1 max-w-sm">
            Try searching for another movie or TV show name, or check your internet connection.
          </p>
        </div>
      )}
    </div>
  );
}
