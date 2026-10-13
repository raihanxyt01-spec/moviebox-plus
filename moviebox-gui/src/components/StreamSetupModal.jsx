import React, { useState, useEffect } from 'react';
import { 
  X, Play, Film, Languages, Subtitles, Check, Loader2, 
  Sparkles, Gauge, ArrowRight, ShieldCheck, Zap
} from 'lucide-react';
import { movieboxApi } from '../api/moviebox';

export default function StreamSetupModal({
  item,
  season = 0,
  episode = 0,
  initialDub = null,
  preferredPlayer = 'vlc',
  onLaunchExternal,
  onLaunchVlc,
  onClose
}) {
  const [isLoading, setIsLoading] = useState(true);
  const [sources, setSources] = useState([]);
  const [subtitles, setSubtitles] = useState([]);
  const [selectedSource, setSelectedSource] = useState(null);
  const [selectedSubtitle, setSelectedSubtitle] = useState('off');
  const [selectedPlayer, setSelectedPlayer] = useState(preferredPlayer || 'vlc');
  const [dubs, setDubs] = useState(item?.dubs || []);
  const [activeDub, setActiveDub] = useState(initialDub || null);
  const [rememberQuickPlay, setRememberQuickPlay] = useState(() => {
    return localStorage.getItem('mb_auto_quickplay') === 'true';
  });

  const isAndroid = typeof window !== 'undefined' && (
    window.Capacitor !== undefined || /Android/i.test(navigator.userAgent)
  );

  const isSeries = item?.type === 'Series';
  const seNum = isSeries ? (season > 0 ? season : 1) : 0;
  const epNum = isSeries ? (episode > 0 ? episode : 1) : 0;

  // Fetch streams for the selected subject (or active dub)
  useEffect(() => {
    let isMounted = true;
    setIsLoading(true);

    const subjectToFetch = activeDub?.subjectId || item?.id;
    if (!subjectToFetch) return;

    movieboxApi.getPlayStreams(subjectToFetch, seNum, epNum)
      .then((streamData) => {
        if (!isMounted) return;
        const srcList = streamData.sources || [];
        const subList = streamData.subtitles || [];

        setSources(srcList);
        setSubtitles(subList);

        // Pre-select best stream (highest resolution)
        if (srcList.length > 0) {
          // Prefer high-res direct stream or first available
          const best = srcList.find(s => s.direct && (s.resolution >= 1080 || s.badge?.includes('1080') || s.badge?.includes('4K'))) || srcList[0];
          setSelectedSource(best);
        }

        // Pre-select subtitle matching language or English
        if (subList.length > 0) {
          const engSub = subList.find(s => s.language?.toLowerCase() === 'en' || s.label?.toLowerCase().includes('english')) || subList[0];
          setSelectedSubtitle(engSub?.url || 'off');
        } else {
          setSelectedSubtitle('off');
        }

        setIsLoading(false);
      })
      .catch((err) => {
        console.error('Failed to resolve streams for setup modal:', err);
        if (isMounted) setIsLoading(false);
      });

    return () => { isMounted = false; };
  }, [item?.id, activeDub?.subjectId, seNum, epNum]);

  const handleDubChange = (dub) => {
    setActiveDub(dub);
    // Streams will re-fetch automatically via useEffect
  };

  const handleLaunchPlayback = () => {
    if (rememberQuickPlay) {
      localStorage.setItem('mb_auto_quickplay', 'true');
    }
    const launchData = {
      source: selectedSource,
      subtitleUrl: selectedSubtitle !== 'off' ? selectedSubtitle : null,
      dub: activeDub,
      player: selectedPlayer
    };
    if (onLaunchExternal) {
      onLaunchExternal(launchData);
    } else if (onLaunchVlc) {
      onLaunchVlc(launchData);
    }
    onClose();
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-6 bg-black/85 backdrop-blur-md animate-in fade-in duration-200">
      <div className="relative w-full max-w-2xl bg-surface/98 rounded-3xl overflow-hidden shadow-2xl border border-surfaceHover flex flex-col max-h-[92vh]">
        
        {/* Header */}
        <div className="p-5 sm:p-6 border-b border-surfaceHover flex items-center justify-between gap-4 bg-background/50">
          <div className="flex items-center gap-3.5 min-w-0">
            {item?.cover && (
              <img 
                src={item.cover} 
                alt={item.title} 
                className="w-12 h-16 rounded-xl object-cover shrink-0 shadow-md border border-surfaceHover"
              />
            )}
            <div className="min-w-0">
              <span className="text-[10px] font-black uppercase tracking-wider text-orange-400 block mb-0.5">
                Playback Configuration & Quality Setup
              </span>
              <h2 className="text-base sm:text-lg font-extrabold text-white truncate">
                {item?.title} {isSeries && <span className="text-orange-400 ml-1">S{seNum}:E{epNum}</span>}
              </h2>
            </div>
          </div>

          <button
            onClick={onClose}
            className="p-2 rounded-full bg-surfaceHover hover:bg-surface text-gray-400 hover:text-white transition-colors shrink-0"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Content Body */}
        <div className="p-5 sm:p-6 overflow-y-auto space-y-6 flex-1 divide-y divide-surfaceHover/50">
          
          {/* 1. Audio Language / Dub Selector */}
          {dubs.length > 0 && (
            <div className="pt-2 first:pt-0">
              <div className="flex items-center justify-between mb-3">
                <label className="text-xs font-bold text-gray-300 uppercase tracking-wider flex items-center gap-2">
                  <Languages className="w-4 h-4 text-orange-400" />
                  1. Audio Language & Dub
                </label>
                <span className="text-[11px] text-gray-400">
                  {activeDub ? activeDub.label : 'Original Audio'}
                </span>
              </div>

              <div className="flex flex-wrap gap-2">
                <button
                  type="button"
                  onClick={() => handleDubChange(null)}
                  className={`px-3.5 py-2 rounded-xl text-xs font-bold transition-all border flex items-center gap-1.5 ${
                    !activeDub
                      ? 'bg-orange-600 border-orange-500 text-white shadow-lg shadow-orange-600/30 scale-102'
                      : 'bg-surfaceHover border-surfaceHover text-gray-300 hover:text-white'
                  }`}
                >
                  {!activeDub && <Check className="w-3.5 h-3.5" />}
                  Original Audio
                </button>

                {dubs.map((d, idx) => {
                  const isSelected = activeDub?.subjectId === d.subjectId;
                  return (
                    <button
                      key={idx}
                      type="button"
                      onClick={() => handleDubChange(d)}
                      className={`px-3.5 py-2 rounded-xl text-xs font-bold transition-all border flex items-center gap-1.5 ${
                        isSelected
                          ? 'bg-orange-600 border-orange-500 text-white shadow-lg shadow-orange-600/30 scale-102'
                          : 'bg-surfaceHover border-surfaceHover text-gray-300 hover:text-white'
                      }`}
                    >
                      {isSelected && <Check className="w-3.5 h-3.5" />}
                      {d.label}
                    </button>
                  );
                })}
              </div>
            </div>
          )}

          {/* 2. Video Quality / Stream Resolution Table */}
          <div className="pt-5">
            <div className="flex items-center justify-between mb-3">
              <label className="text-xs font-bold text-gray-300 uppercase tracking-wider flex items-center gap-2">
                <Gauge className="w-4 h-4 text-orange-400" />
                2. Select Video Quality / Resolution
              </label>
              {selectedSource && (
                <span className="text-[11px] font-extrabold text-orange-400">
                  Selected: {selectedSource.badge || `${selectedSource.resolution}p`}
                </span>
              )}
            </div>

            {isLoading ? (
              <div className="py-8 flex flex-col items-center justify-center gap-2 text-gray-400">
                <Loader2 className="w-6 h-6 animate-spin text-orange-500" />
                <span className="text-xs font-semibold">Resolving genuine quality streams...</span>
              </div>
            ) : sources.length > 0 ? (
              <div className="space-y-2 max-h-56 overflow-y-auto pr-1">
                {sources.map((s, idx) => {
                  const isSelected = selectedSource?.url === s.url && selectedSource?.resolution === s.resolution;
                  const isTopQuality = idx === 0;

                  return (
                    <div
                      key={idx}
                      onClick={() => setSelectedSource(s)}
                      className={`p-3 rounded-2xl border cursor-pointer transition-all flex items-center justify-between gap-3 ${
                        isSelected 
                          ? 'bg-orange-600/15 border-orange-500 shadow-md shadow-orange-600/10 scale-[1.01]' 
                          : 'bg-surfaceHover/70 hover:bg-surfaceHover border-surfaceHover text-gray-300'
                      }`}
                    >
                      <div className="flex items-center gap-3 min-w-0">
                        <div className={`w-5 h-5 rounded-full border-2 flex items-center justify-center shrink-0 ${
                          isSelected ? 'border-orange-500 bg-orange-500' : 'border-gray-500'
                        }`}>
                          {isSelected && <Check className="w-3 h-3 text-white" />}
                        </div>

                        <div className="min-w-0">
                          <div className="flex items-center gap-2">
                            <span className="font-extrabold text-sm text-white">
                              {s.badge || `${s.resolution || 1080}p`}
                            </span>
                            {isTopQuality && (
                              <span className="px-2 py-0.5 rounded-full text-[10px] font-black bg-gradient-to-r from-orange-500 to-amber-500 text-white uppercase tracking-wider">
                                Highest Quality
                              </span>
                            )}
                            {s.format && (
                              <span className="text-[10px] text-gray-400 uppercase font-semibold">
                                {s.format}
                              </span>
                            )}
                          </div>
                          <p className="text-[11px] text-gray-400 truncate mt-0.5">
                            {s.source || 'MovieBox CDN'} {s.size ? `• ${s.size}` : ''} {s.codec ? `• ${s.codec}` : ''}
                          </p>
                        </div>
                      </div>

                      {s.size && (
                        <span className="text-xs font-bold text-gray-300 shrink-0 bg-background/60 px-2.5 py-1 rounded-lg border border-surfaceHover">
                          {s.size}
                        </span>
                      )}
                    </div>
                  );
                })}
              </div>
            ) : (
              <p className="py-4 text-center text-xs text-gray-400">
                No quality streams available for this item.
              </p>
            )}
          </div>

          {/* 3. Subtitles Selector */}
          <div className="pt-5">
            <div className="flex items-center justify-between mb-3">
              <label className="text-xs font-bold text-gray-300 uppercase tracking-wider flex items-center gap-2">
                <Subtitles className="w-4 h-4 text-orange-400" />
                3. Subtitles
              </label>
              <span className="text-[11px] text-gray-400">
                {selectedSubtitle === 'off' ? 'Subtitles Off' : 'Subtitle Active'}
              </span>
            </div>

            <div className="flex flex-wrap gap-2">
              <button
                type="button"
                onClick={() => setSelectedSubtitle('off')}
                className={`px-3 py-1.5 rounded-xl text-xs font-semibold border transition-all ${
                  selectedSubtitle === 'off'
                    ? 'bg-surface border-gray-400 text-white font-bold'
                    : 'bg-surfaceHover border-surfaceHover text-gray-400 hover:text-white'
                }`}
              >
                Off
              </button>

              {subtitles.map((sub, idx) => {
                const isSelected = selectedSubtitle === sub.url;
                return (
                  <button
                    key={idx}
                    type="button"
                    onClick={() => setSelectedSubtitle(sub.url)}
                    className={`px-3 py-1.5 rounded-xl text-xs font-semibold border transition-all flex items-center gap-1.5 ${
                      isSelected
                        ? 'bg-orange-600 border-orange-500 text-white font-bold shadow-md shadow-orange-600/25'
                        : 'bg-surfaceHover border-surfaceHover text-gray-300 hover:text-white'
                    }`}
                  >
                    {isSelected && <Check className="w-3 h-3 text-white" />}
                    <span>{sub.label || sub.language || `Subtitle ${idx + 1}`}</span>
                  </button>
                );
              })}
            </div>
          </div>

          {/* 4. External Player Choice */}
          <div className="pt-5">
            <div className="flex items-center justify-between mb-3">
              <label className="text-xs font-bold text-gray-300 uppercase tracking-wider flex items-center gap-2">
                <Sparkles className="w-4 h-4 text-orange-400" />
                4. External Playback Engine
              </label>
              <span className="text-[11px] text-gray-400">
                Lossless native Direct3D11 / MediaCodec
              </span>
            </div>

            <div className="flex flex-wrap gap-2">
              <button
                type="button"
                onClick={() => setSelectedPlayer('vlc')}
                className={`px-3.5 py-2 rounded-xl text-xs font-bold transition-all border flex items-center gap-2 ${
                  selectedPlayer === 'vlc'
                    ? 'bg-orange-600 border-orange-500 text-white shadow-lg shadow-orange-600/30'
                    : 'bg-surfaceHover border-surfaceHover text-gray-300 hover:text-white'
                }`}
              >
                <span>🎬 VLC Media Player</span>
                {selectedPlayer === 'vlc' && <Check className="w-3.5 h-3.5" />}
              </button>

              {!isAndroid && (
                <button
                  type="button"
                  onClick={() => setSelectedPlayer('potplayer')}
                  className={`px-3.5 py-2 rounded-xl text-xs font-bold transition-all border flex items-center gap-2 ${
                    selectedPlayer === 'potplayer'
                      ? 'bg-yellow-600 border-yellow-500 text-white shadow-lg shadow-yellow-600/30'
                      : 'bg-surfaceHover border-surfaceHover text-gray-300 hover:text-white'
                  }`}
                >
                  <span>🎯 PotPlayer (Daum)</span>
                  {selectedPlayer === 'potplayer' && <Check className="w-3.5 h-3.5" />}
                </button>
              )}

              {isAndroid && (
                <>
                  <button
                    type="button"
                    onClick={() => setSelectedPlayer('mxplayer')}
                    className={`px-3.5 py-2 rounded-xl text-xs font-bold transition-all border flex items-center gap-2 ${
                      selectedPlayer === 'mxplayer'
                        ? 'bg-blue-600 border-blue-500 text-white shadow-lg shadow-blue-600/30'
                        : 'bg-surfaceHover border-surfaceHover text-gray-300 hover:text-white'
                    }`}
                  >
                    <span>📱 MX Player</span>
                    {selectedPlayer === 'mxplayer' && <Check className="w-3.5 h-3.5" />}
                  </button>

                  <button
                    type="button"
                    onClick={() => setSelectedPlayer('system')}
                    className={`px-3.5 py-2 rounded-xl text-xs font-bold transition-all border flex items-center gap-2 ${
                      selectedPlayer === 'system'
                        ? 'bg-purple-600 border-purple-500 text-white shadow-lg shadow-purple-600/30'
                        : 'bg-surfaceHover border-surfaceHover text-gray-300 hover:text-white'
                    }`}
                  >
                    <span>⚙️ System Player</span>
                    {selectedPlayer === 'system' && <Check className="w-3.5 h-3.5" />}
                  </button>
                </>
              )}
            </div>
          </div>

        </div>

        {/* Footer Actions */}
        <div className="p-5 sm:p-6 border-t border-surfaceHover bg-background/70 flex flex-col sm:flex-row items-center justify-between gap-4">
          <label className="flex items-center gap-2 cursor-pointer text-xs text-gray-300 select-none">
            <input
              type="checkbox"
              checked={rememberQuickPlay}
              onChange={(e) => setRememberQuickPlay(e.target.checked)}
              className="rounded accent-orange-500 w-4 h-4 cursor-pointer"
            />
            <span>Remember quality & player next time</span>
          </label>

          <div className="flex items-center gap-2.5 w-full sm:w-auto">
            <button
              onClick={onClose}
              type="button"
              className="flex-1 sm:flex-none px-4 py-3 rounded-xl bg-surfaceHover hover:bg-surfaceHover/80 text-gray-300 hover:text-white text-xs font-bold border border-surfaceHover transition-all"
            >
              Cancel
            </button>

            {/* Primary: Launch in Selected External Player */}
            <button
              onClick={handleLaunchPlayback}
              disabled={!selectedSource || isLoading}
              className="flex-1 sm:flex-none flex items-center justify-center gap-2 px-6 py-3 rounded-xl bg-gradient-to-r from-orange-600 to-amber-600 hover:from-orange-500 hover:to-amber-500 text-white text-xs font-black shadow-xl shadow-orange-600/30 hover:scale-105 active:scale-95 transition-all disabled:opacity-40"
            >
              <Play className="w-4 h-4 fill-current" />
              <span>
                {selectedPlayer === 'potplayer' ? 'Launch in PotPlayer' :
                 selectedPlayer === 'mxplayer' ? 'Launch in MX Player' :
                 selectedPlayer === 'system' ? 'Launch in System Player' :
                 'Launch in VLC (Ultra HD)'}
              </span>
            </button>
          </div>
        </div>

      </div>
    </div>
  );
}
