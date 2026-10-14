import React from 'react';
import { Play, X, Clock, Settings2, SlidersHorizontal, Sparkles } from 'lucide-react';
import { removeWatchHistoryItem } from '../utils/contentFilter';

export default function ContinueWatchingShelf({
  historyItems,
  onPlayItem,
  onSelectQuality,
  onRefreshHistory
}) {
  if (!historyItems || historyItems.length === 0) return null;

  const handleRemove = (e, id) => {
    e.stopPropagation();
    removeWatchHistoryItem(id);
    if (onRefreshHistory) onRefreshHistory();
  };

  const formatTime = (secs) => {
    if (isNaN(secs) || secs < 0) return '00:00';
    const m = Math.floor(secs / 60);
    const s = Math.floor(secs % 60);
    return `${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`;
  };

  const handleCardClick = (item) => {
    if (onSelectQuality) {
      onSelectQuality(item.raw || item, item.season, item.episode);
    } else if (onPlayItem) {
      onPlayItem(item.raw || item, item.season, item.episode);
    }
  };

  return (
    <div className="space-y-3">
      <div className="flex items-center justify-between">
        <h3 className="text-base sm:text-lg font-bold text-white flex items-center gap-2">
          <Clock className="w-4 h-4 text-orange-400" />
          <span>Continue Watching</span>
          <span className="text-xs font-semibold px-2 py-0.5 rounded-full bg-surfaceHover text-gray-400">
            {historyItems.length}
          </span>
        </h3>
        <span className="text-[11px] text-gray-400 hidden sm:inline">
          Tap card to select quality & audio before playing
        </span>
      </div>

      <div className="flex gap-4 overflow-x-auto pb-2 no-scrollbar scroll-smooth">
        {historyItems.map((item) => {
          const isSeries = item.type === 'Series';
          return (
            <div
              key={item.id}
              onClick={() => handleCardClick(item)}
              className="relative w-48 sm:w-60 flex-shrink-0 bg-surface rounded-2xl overflow-hidden border border-surfaceHover hover:border-orange-500/50 cursor-pointer shadow-lg hover:shadow-2xl transition-all group flex flex-col justify-between"
            >
              {/* Thumbnail Container */}
              <div className="relative aspect-video w-full bg-background overflow-hidden">
                <img
                  src={item.cover}
                  alt={item.title}
                  className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
                  loading="lazy"
                />
                
                {/* Remove button */}
                <button
                  onClick={(e) => handleRemove(e, item.id)}
                  title="Remove from Continue Watching"
                  className="absolute top-2 right-2 p-1.5 rounded-full bg-black/75 hover:bg-red-500 text-gray-300 hover:text-white transition-all z-10 opacity-0 group-hover:opacity-100"
                >
                  <X className="w-3.5 h-3.5" />
                </button>

                {/* Big Center Play Icon on Hover */}
                <div className="absolute inset-0 bg-black/40 flex items-center justify-center opacity-0 group-hover:opacity-100 transition-opacity">
                  <div className="flex items-center gap-2">
                    <button
                      onClick={(e) => {
                        e.stopPropagation();
                        if (onSelectQuality) {
                          onSelectQuality(item.raw || item, item.season, item.episode);
                        } else {
                          onPlayItem(item.raw || item, item.season, item.episode);
                        }
                      }}
                      className="p-3 rounded-full bg-gradient-to-r from-orange-600 to-amber-600 text-white shadow-xl shadow-orange-600/40 transform hover:scale-110 active:scale-95 transition-all flex items-center justify-center"
                      title="Select quality and play in VLC"
                    >
                      <Play className="w-4 h-4 fill-current ml-0.5" />
                    </button>
                  </div>
                </div>

                {/* Episodic Badge */}
                {isSeries && item.episode > 0 && (
                  <span className="absolute bottom-2 left-2 px-2 py-0.5 rounded-md bg-orange-600 text-white text-[10px] font-extrabold shadow">
                    S{item.season}:E{item.episode}
                  </span>
                )}
              </div>

              {/* Progress Bar */}
              <div className="w-full h-1 bg-gray-700">
                <div 
                  className="h-full bg-gradient-to-r from-orange-500 to-amber-500 transition-all"
                  style={{ width: `${Math.min(100, item.progress || 0)}%` }}
                />
              </div>

              {/* Details & Actions Footer */}
              <div className="p-3 flex-1 flex flex-col justify-between">
                <div>
                  <p className="text-xs sm:text-sm font-bold text-white truncate group-hover:text-orange-400 transition-colors">
                    {item.title}
                  </p>
                  <div className="flex items-center justify-between text-[11px] text-gray-400 mt-1">
                    <span>{formatTime(item.currentTime)} / {formatTime(item.duration)}</span>
                    <span className="font-semibold text-orange-400">{item.progress || 0}%</span>
                  </div>
                </div>

                {/* Quality & Stream Selection Button */}
                <button
                  type="button"
                  onClick={(e) => {
                    e.stopPropagation();
                    if (onSelectQuality) {
                      onSelectQuality(item.raw || item, item.season, item.episode);
                    } else if (onPlayItem) {
                      onPlayItem(item.raw || item, item.season, item.episode);
                    }
                  }}
                  className="mt-2.5 w-full flex items-center justify-center gap-1.5 py-1.5 px-2 rounded-xl bg-surfaceHover hover:bg-orange-600 text-gray-300 hover:text-white border border-surfaceHover hover:border-orange-500 text-[11px] font-bold transition-all shadow-sm"
                  title="Configure quality resolution and file size before playing"
                >
                  <Settings2 className="w-3.5 h-3.5 text-orange-400 group-hover:text-white" />
                  <span>Quality & Streams</span>
                </button>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}
