import React from 'react';
import { Play, Star, Film, Bookmark } from 'lucide-react';

export default function MediaCard({ item, onClick, onPlay, isFavorite, onToggleFavorite }) {
  if (!item) return null;

  return (
    <div className="group relative flex flex-col cursor-pointer" onClick={() => onClick(item)}>
      {/* Poster Image Container */}
      <div className="relative aspect-[2/3] w-full rounded-2xl overflow-hidden bg-surface shadow-lg group-hover:shadow-2xl group-hover:shadow-accent/15 transition-all duration-300 border border-surfaceHover/50 group-hover:border-accent/40">
        
        {item.cover ? (
          <img
            src={item.cover}
            alt={item.title}
            loading="lazy"
            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500 will-change-transform"
          />
        ) : (
          <div className="w-full h-full flex flex-col items-center justify-center text-gray-500 bg-surface">
            <Film className="w-8 h-8 mb-2" />
            <span className="text-xs">No Poster</span>
          </div>
        )}

        {/* Gradient Overlay */}
        <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex flex-col justify-between p-3.5">
          
          {/* Top badges & Favorite */}
          <div className="flex items-center justify-between">
            <span className={`px-2 py-0.5 rounded-md text-[10px] font-bold tracking-wider uppercase ${
              item.type === 'Series' ? 'bg-primary text-white' : 'bg-accent text-white'
            }`}>
              {item.type}
            </span>

            {onToggleFavorite && (
              <button
                onClick={(e) => {
                  e.stopPropagation();
                  onToggleFavorite(item);
                }}
                className={`p-1.5 rounded-full backdrop-blur-md transition-colors ${
                  isFavorite ? 'bg-accent text-white' : 'bg-black/60 text-gray-300 hover:text-white'
                }`}
              >
                <Bookmark className={`w-3.5 h-3.5 ${isFavorite ? 'fill-current' : ''}`} />
              </button>
            )}
          </div>

          {/* Quick Play Center Button */}
          <div className="self-center">
            <button
              onClick={(e) => {
                e.stopPropagation();
                if (onPlay) onPlay(item);
                else onClick(item);
              }}
              className="w-12 h-12 rounded-full bg-accent/90 hover:bg-accent text-white flex items-center justify-center shadow-lg shadow-accent/50 hover:scale-110 active:scale-95 transition-all"
            >
              <Play className="w-5 h-5 fill-current ml-0.5" />
            </button>
          </div>

          {/* Bottom rating & year */}
          <div className="flex items-center justify-between text-xs text-white">
            <span>{item.year || ''}</span>
            {item.rating && item.rating !== 'N/A' && (
              <span className="flex items-center gap-1 font-bold text-yellow-400">
                <Star className="w-3.5 h-3.5 fill-yellow-400" />
                {item.rating}
              </span>
            )}
          </div>

        </div>

      </div>

      {/* Title & Info */}
      <div className="mt-2.5 px-0.5">
        <h3 className="text-sm font-semibold text-white truncate group-hover:text-accent transition-colors">
          {item.title}
        </h3>
        <div className="flex items-center justify-between mt-0.5 text-xs text-gray-400">
          <span>{item.year || item.type}</span>
          {item.rating && item.rating !== 'N/A' && (
            <span className="flex items-center gap-1 text-gray-300">
              <Star className="w-3 h-3 text-yellow-400 fill-yellow-400" />
              {item.rating}
            </span>
          )}
        </div>
      </div>
    </div>
  );
}
