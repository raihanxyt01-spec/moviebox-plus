import React, { useState, useEffect, useRef } from 'react';
import { Play, Info, Star, Calendar, Bookmark, ChevronLeft, ChevronRight, Flame } from 'lucide-react';

export default function HeroBanner({ 
  items = [], 
  item = null, 
  onPlay, 
  onDetails, 
  isFavorite, 
  onToggleFavorite 
}) {
  // Normalize items array
  const slideItems = (Array.isArray(items) && items.length > 0) 
    ? items.slice(0, 10) 
    : (item ? [item] : []);

  const [currentIndex, setCurrentIndex] = useState(0);
  const [isHovered, setIsHovered] = useState(false);
  const timerRef = useRef(null);
  const touchStartXRef = useRef(0);
  const touchDeltaXRef = useRef(0);

  // Auto-slide every 5.5 seconds if not hovered
  useEffect(() => {
    if (slideItems.length <= 1 || isHovered) return;

    timerRef.current = setInterval(() => {
      setCurrentIndex((prev) => (prev + 1) % slideItems.length);
    }, 5500);

    return () => {
      if (timerRef.current) clearInterval(timerRef.current);
    };
  }, [slideItems.length, isHovered]);

  if (slideItems.length === 0) return null;

  const currentItem = slideItems[currentIndex] || slideItems[0];
  const isCurrentFavorite = typeof isFavorite === 'function' 
    ? isFavorite(currentItem) 
    : Boolean(isFavorite);

  const handlePrev = (e) => {
    if (e?.stopPropagation) e.stopPropagation();
    setCurrentIndex((prev) => (prev - 1 + slideItems.length) % slideItems.length);
  };

  const handleNext = (e) => {
    if (e?.stopPropagation) e.stopPropagation();
    setCurrentIndex((prev) => (prev + 1) % slideItems.length);
  };

  const handleTouchStart = (e) => {
    if (e.touches && e.touches.length === 1) {
      touchStartXRef.current = e.touches[0].clientX;
      touchDeltaXRef.current = 0;
    }
  };

  const handleTouchMove = (e) => {
    if (e.touches && e.touches.length === 1) {
      touchDeltaXRef.current = e.touches[0].clientX - touchStartXRef.current;
    }
  };

  const handleTouchEnd = () => {
    const delta = touchDeltaXRef.current;
    if (delta > 45) {
      handlePrev();
    } else if (delta < -45) {
      handleNext();
    }
    touchStartXRef.current = 0;
    touchDeltaXRef.current = 0;
  };

  return (
    <div 
      onMouseEnter={() => setIsHovered(true)}
      onMouseLeave={() => setIsHovered(false)}
      onTouchStart={handleTouchStart}
      onTouchMove={handleTouchMove}
      onTouchEnd={handleTouchEnd}
      className="relative w-full h-[400px] sm:h-[500px] rounded-3xl overflow-hidden mb-8 shadow-2xl border border-surfaceHover/50 group select-none"
    >
      {/* Background Poster Backdrop with Smooth Transitions */}
      <div className="absolute inset-0 w-full h-full">
        {slideItems.map((s, idx) => (
          <img
            key={s.id || idx}
            src={s.cover}
            alt={s.title}
            className={`absolute inset-0 w-full h-full object-cover object-top filter brightness-65 transition-all duration-700 ease-out ${
              idx === currentIndex 
                ? 'opacity-100 scale-100 z-0' 
                : 'opacity-0 scale-105 -z-10 pointer-events-none'
            }`}
          />
        ))}
      </div>

      {/* Cinematic Gradient Overlays */}
      <div className="absolute inset-0 bg-gradient-to-t from-background via-background/60 to-transparent pointer-events-none" />
      <div className="absolute inset-0 bg-gradient-to-r from-background/95 via-background/40 to-transparent pointer-events-none" />

      {/* Navigation Arrows */}
      {slideItems.length > 1 && (
        <>
          <button
            onClick={handlePrev}
            aria-label="Previous Slide"
            className="absolute left-4 top-1/2 -translate-y-1/2 z-20 p-2.5 rounded-full bg-black/50 hover:bg-black/80 text-white/80 hover:text-white backdrop-blur-md opacity-0 group-hover:opacity-100 transition-all border border-white/10 hover:scale-110"
          >
            <ChevronLeft className="w-5 h-5" />
          </button>

          <button
            onClick={handleNext}
            aria-label="Next Slide"
            className="absolute right-4 top-1/2 -translate-y-1/2 z-20 p-2.5 rounded-full bg-black/50 hover:bg-black/80 text-white/80 hover:text-white backdrop-blur-md opacity-0 group-hover:opacity-100 transition-all border border-white/10 hover:scale-110"
          >
            <ChevronRight className="w-5 h-5" />
          </button>
        </>
      )}

      {/* Slide Content */}
      <div className="absolute bottom-0 left-0 p-6 sm:p-12 max-w-2xl z-10 flex flex-col items-start gap-3.5 animate-in fade-in duration-300">
        
        {/* Badges */}
        <div className="flex items-center gap-2.5 text-xs font-semibold flex-wrap">
          <span className="flex items-center gap-1 px-3 py-1 rounded-full bg-gradient-to-r from-orange-600 to-amber-600 text-white uppercase tracking-wider font-black shadow-lg shadow-orange-600/30">
            <Flame className="w-3.5 h-3.5 fill-current" />
            <span>Trending #{currentIndex + 1}</span>
          </span>

          <span className={`px-2.5 py-1 rounded-full uppercase tracking-wider text-[11px] font-bold ${
            currentItem.type === 'Series' ? 'bg-primary/30 text-blue-300' : 'bg-yellow-500/30 text-yellow-300'
          }`}>
            {currentItem.type}
          </span>

          {currentItem.year && (
            <span className="flex items-center gap-1 text-gray-300">
              <Calendar className="w-3.5 h-3.5 text-gray-400" />
              {currentItem.year}
            </span>
          )}

          {currentItem.rating && currentItem.rating !== 'N/A' && (
            <span className="flex items-center gap-1 text-yellow-400 font-bold">
              <Star className="w-3.5 h-3.5 fill-yellow-400" />
              {currentItem.rating}
            </span>
          )}

          <span className="px-2 py-0.5 rounded text-[10px] font-extrabold uppercase tracking-wider bg-white/10 text-gray-200">
            Ultra HD
          </span>
        </div>

        {/* Title */}
        <h1 className="text-2xl sm:text-4xl lg:text-5xl font-black text-white leading-tight tracking-tight drop-shadow-md">
          {currentItem.title}
        </h1>

        {/* Synopsis */}
        <p className="text-sm sm:text-base text-gray-300 line-clamp-2 leading-relaxed drop-shadow">
          {currentItem.synopsis || currentItem.description || 'Watch now in lossless ultra-high definition with integrated hardware acceleration and instant streaming.'}
        </p>

        {/* Action Buttons */}
        <div className="flex items-center gap-3 mt-2 flex-wrap">
          <button
            onClick={() => onPlay(currentItem)}
            className="flex items-center gap-2 px-6 py-3 rounded-xl bg-gradient-to-r from-orange-600 to-amber-600 hover:from-orange-500 hover:to-amber-500 text-white font-black text-sm shadow-xl shadow-orange-600/30 hover:scale-105 active:scale-95 transition-all"
          >
            <Play className="w-4 h-4 fill-current" />
            <span>Watch Now (Ultra HD)</span>
          </button>

          <button
            onClick={() => onDetails(currentItem)}
            className="flex items-center gap-2 px-5 py-3 rounded-xl bg-surface/85 hover:bg-surface text-white font-bold text-sm backdrop-blur-md border border-white/10 hover:border-white/20 hover:scale-105 active:scale-95 transition-all shadow-md"
          >
            <Info className="w-4 h-4 text-orange-400" />
            <span>Details</span>
          </button>

          <button
            onClick={() => onToggleFavorite(currentItem)}
            title={isCurrentFavorite ? 'Remove from Favorites' : 'Add to Favorites'}
            className={`p-3 rounded-xl backdrop-blur-md border transition-all ${
              isCurrentFavorite 
                ? 'bg-orange-600/20 border-orange-500 text-orange-400 shadow-md' 
                : 'bg-surface/85 border-white/10 text-gray-300 hover:text-white hover:bg-surface'
            }`}
          >
            <Bookmark className={`w-4 h-4 ${isCurrentFavorite ? 'fill-current' : ''}`} />
          </button>
        </div>

      </div>

      {/* Carousel Indicator Dots - Positioned safely so they never overlap action buttons */}
      {slideItems.length > 1 && (
        <div className="absolute top-4 sm:top-auto sm:bottom-6 right-4 sm:right-10 z-20 flex items-center gap-1.5 sm:gap-2 bg-black/60 sm:bg-black/40 backdrop-blur-md px-3 sm:px-3.5 py-1.5 sm:py-2 rounded-full border border-white/10 shadow-lg">
          {slideItems.map((_, idx) => (
            <button
              key={idx}
              onClick={() => setCurrentIndex(idx)}
              aria-label={`Jump to slide ${idx + 1}`}
              className={`transition-all duration-300 rounded-full ${
                idx === currentIndex
                  ? 'w-5 sm:w-6 h-1.5 sm:h-2 bg-orange-500'
                  : 'w-1.5 sm:w-2 h-1.5 sm:h-2 bg-white/40 hover:bg-white/70'
              }`}
            />
          ))}
          <span className="text-[10px] sm:text-[11px] font-bold text-gray-200 sm:text-gray-300 ml-1 sm:ml-1.5 font-mono">
            {currentIndex + 1}/{slideItems.length}
          </span>
        </div>
      )}

    </div>
  );
}
