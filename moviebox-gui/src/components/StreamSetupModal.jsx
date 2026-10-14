import React, { useState, useEffect } from 'react';
import { 
  X, Play, Film, Languages, Subtitles, Check, Loader2, 
  Sparkles, Gauge, ArrowRight, ShieldCheck, Zap, HardDrive, CheckCircle2
} from 'lucide-react';
import { movieboxApi } from '../api/moviebox';
import { fourkhdApi } from '../api/fourkhd';

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
  const [activeProvider, setActiveProvider] = useState('Checking...');
  const [rememberQuickPlay, setRememberQuickPlay] = useState(() => {
    return localStorage.getItem('mb_auto_quickplay') === 'true';
  });

  const isAndroid = typeof window !== 'undefined' && (
    window.Capacitor !== undefined || /Android/i.test(navigator.userAgent)
  );

  const isSeries = item?.type === 'Series';
  const seNum = isSeries ? (season > 0 ? season : 1) : 0;
  const epNum = isSeries ? (episode > 0 ? episode : 1) : 0;

  // Fetch streams: First check MovieBox server -> If no playback found, switch to 4K HD Hub for you
  useEffect(() => {
    let isMounted = true;
    setIsLoading(true);

    const isExplicit4kHd = item?.provider === 'fourkhdhub' || item?.id?.startsWith('fourkhd_') || item?.path;

    async function loadStreams() {
      let srcList = [];
      let subList = [];
      let provName = isExplicit4kHd ? '4K HD Hub for you' : 'MovieBox Stream Server';

      // 1. Check MovieBox first if item is not explicitly 4K HD Hub
      if (!isExplicit4kHd && (activeDub?.subjectId || item?.id)) {
        try {
          const mbData = await movieboxApi.getPlayStreams(activeDub?.subjectId || item?.id, seNum, epNum);
          if (mbData && mbData.sources && mbData.sources.length > 0) {
            srcList = mbData.sources;
            subList = mbData.subtitles || [];
            provName = 'MovieBox CDN';
          }
        } catch (err) {
          console.warn('MovieBox stream server returned no sources, switching to 4K HD Hub:', err);
        }
      }

      // 2. If no streams found on MovieBox, switch automatically to 4K HD Hub for you
      if (srcList.length === 0 && (item?.title || item?.path || item?.id)) {
        provName = '4K HD Hub for you';
        try {
          let targetPath = item.path || (item.id?.startsWith('fourkhd_') ? item.id : null);
          if (!targetPath && item.title) {
            const cleanTitle = item.title.replace(/\(\d{4}\)/g, '').replace(/\[.*?\]/g, '').trim();
            let searchRes = await fourkhdApi.search(cleanTitle);
            if (!searchRes || searchRes.length === 0) {
              searchRes = await fourkhdApi.search(item.title);
            }
            if (searchRes && searchRes.length > 0) {
              targetPath = searchRes[0].path || searchRes[0].id;
            }
          }

          if (targetPath) {
            const fourkData = await fourkhdApi.getPlayStreams(targetPath, seNum, epNum);
            if (fourkData && fourkData.sources && fourkData.sources.length > 0) {
              srcList = fourkData.sources;
              if (fourkData.subtitles && fourkData.subtitles.length > 0) {
                subList = fourkData.subtitles;
              }
            }
          }
        } catch (e) {
          console.error('4K HD Hub stream retrieval failed:', e);
        }
      }

      if (!isMounted) return;

      setSources(srcList);
      setSubtitles(subList);
      setActiveProvider(provName);

      // Pre-select a balanced 1080p stream so user avoids 81GB buffering lag by default, while keeping 81GB selectable
      if (srcList.length > 0) {
        const balanced = srcList.find(s => {
          const sizeStr = (s.size || '').toLowerCase();
          const match = sizeStr.match(/([\d.]+)\s*gb/);
          const gb = match ? parseFloat(match[1]) : 0;
          if (gb >= 30) return false;
          return s.resolution === 1080 || s.badge?.includes('1080');
        }) || srcList.find(s => {
          const sizeStr = (s.size || '').toLowerCase();
          const match = sizeStr.match(/([\d.]+)\s*gb/);
          const gb = match ? parseFloat(match[1]) : 0;
          return gb < 30;
        }) || srcList[0];

        setSelectedSource(balanced);
      }

      // Pre-select subtitle
      if (subList.length > 0) {
        const engSub = subList.find(s => s.language?.toLowerCase() === 'en' || s.label?.toLowerCase().includes('english')) || subList[0];
        setSelectedSubtitle(engSub?.url || 'off');
      } else {
        setSelectedSubtitle('off');
      }

      setIsLoading(false);
    }

    loadStreams();

    return () => { isMounted = false; };
  }, [item?.id, item?.path, item?.provider, activeDub?.subjectId, seNum, epNum]);

  const handleDubChange = (dub) => {
    setActiveDub(dub);
  };

  const handleLaunchPlayback = async () => {
    if (rememberQuickPlay) {
      localStorage.setItem('mb_auto_quickplay', 'true');
    }
    let finalSource = selectedSource;
    if (finalSource && finalSource.mirrors && finalSource.mirrors.length > 0 && !finalSource.direct) {
      setIsLoading(true);
      const resolved = await fourkhdApi.resolveMirror(finalSource.primaryMirror || finalSource.url);
      setIsLoading(false);
      if (resolved && resolved.url) {
        finalSource = { ...finalSource, url: resolved.url, direct: true };
      }
    }

    const launchData = {
      source: finalSource,
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
              <div className="flex items-center gap-2 mb-0.5">
                <span className="text-[10px] font-black uppercase tracking-wider text-orange-400">
                  Playback Quality & Audio Setup
                </span>
                <span className="px-2 py-0.5 rounded-full text-[9px] font-black uppercase tracking-wider bg-orange-600/30 text-orange-400 border border-orange-500/30">
                  {activeProvider}
                </span>
              </div>
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
                      <span>{d.label}</span>
                    </button>
                  );
                })}
              </div>
            </div>
          )}

          {/* 2. Video Quality / Stream Selector */}
          <div className="pt-5">
            <div className="flex items-center justify-between mb-3">
              <label className="text-xs font-bold text-gray-300 uppercase tracking-wider flex items-center gap-2">
                <Film className="w-4 h-4 text-orange-400" />
                2. Select Video Quality & File Size
              </label>
              <span className="text-[11px] text-gray-400">
                {sources.length} stream{sources.length !== 1 ? 's' : ''} available
              </span>
            </div>

            {isLoading ? (
              <div className="py-8 flex flex-col items-center justify-center gap-2 text-gray-400">
                <Loader2 className="w-6 h-6 text-orange-400 animate-spin" />
                <span className="text-xs">Resolving quality streams & direct CDN mirrors...</span>
              </div>
            ) : sources.length > 0 ? (
              <div className="space-y-2 max-h-56 overflow-y-auto pr-1">
                {sources.map((s, idx) => {
                  const isSelected = selectedSource?.url === s.url && selectedSource?.resolution === s.resolution;
                  
                  const sizeStr = (s.size || '').toLowerCase();
                  const match = sizeStr.match(/([\d.]+)\s*gb/);
                  const gb = match ? parseFloat(match[1]) : 0;
                  const isHeavyRemux = gb >= 30;
                  const isSmoothRecommended = (s.resolution === 1080 || s.badge?.includes('1080')) && gb < 15;

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
                          <div className="flex items-center gap-2 flex-wrap">
                            <span className="font-extrabold text-sm text-white">
                              {s.badge || `${s.resolution || 1080}p`}
                            </span>

                            {isSmoothRecommended && (
                              <span className="px-2 py-0.5 rounded-full text-[10px] font-black bg-emerald-600 text-white uppercase tracking-wider">
                                Recommended • Smooth
                              </span>
                            )}

                            {isHeavyRemux && (
                              <span className="px-2 py-0.5 rounded-full text-[10px] font-black bg-amber-600/80 text-white uppercase tracking-wider">
                                Ultra HD Remux (Heavy)
                              </span>
                            )}

                            {s.codec && (
                              <span className="text-[10px] text-gray-400 uppercase font-semibold">
                                {s.codec}
                              </span>
                            )}
                          </div>
                          <p className="text-[11px] text-gray-400 truncate mt-0.5">
                            {s.source || '4K HD Hub / MovieBox'} {s.size ? `• ${s.size}` : ''}
                          </p>
                        </div>
                      </div>

                      {s.size && (
                        <span className={`text-xs font-extrabold shrink-0 px-2.5 py-1 rounded-lg border ${
                          isHeavyRemux 
                            ? 'bg-amber-950/40 border-amber-500/40 text-amber-300' 
                            : 'bg-background/60 border-surfaceHover text-gray-200'
                        }`}>
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
                        ? 'bg-orange-600 border-orange-500 text-white font-bold shadow-md'
                        : 'bg-surfaceHover border-surfaceHover text-gray-300 hover:text-white'
                    }`}
                  >
                    {isSelected && <Check className="w-3 h-3 text-white" />}
                    <span>{sub.label || `Subtitle ${idx + 1}`}</span>
                  </button>
                );
              })}
            </div>
          </div>

          {/* 4. Target Player Engine (VLC / PotPlayer on PC; VLC / MX Player on Mobile) */}
          <div className="pt-5">
            <label className="text-xs font-bold text-gray-300 uppercase tracking-wider block mb-3">
              4. External Video Player
            </label>
            <div className="grid grid-cols-2 gap-3">
              <button
                type="button"
                onClick={() => setSelectedPlayer('vlc')}
                className={`p-3 rounded-2xl border text-left transition-all flex items-center justify-between ${
                  selectedPlayer === 'vlc'
                    ? 'bg-orange-600/20 border-orange-500 text-white shadow-md'
                    : 'bg-surfaceHover border-surfaceHover text-gray-400 hover:text-white'
                }`}
              >
                <div>
                  <p className="font-extrabold text-sm text-white">VLC Media Player</p>
                  <p className="text-[11px] text-gray-400">Default (Dolby & Hardware GPU)</p>
                </div>
                {selectedPlayer === 'vlc' && <Check className="w-4 h-4 text-orange-400" />}
              </button>

              {isAndroid ? (
                <button
                  type="button"
                  onClick={() => setSelectedPlayer('mxplayer')}
                  className={`p-3 rounded-2xl border text-left transition-all flex items-center justify-between ${
                    selectedPlayer === 'mxplayer'
                      ? 'bg-orange-600/20 border-orange-500 text-white shadow-md'
                      : 'bg-surfaceHover border-surfaceHover text-gray-400 hover:text-white'
                  }`}
                >
                  <div>
                    <p className="font-extrabold text-sm text-white">MX Player</p>
                    <p className="text-[11px] text-gray-400">Mobile HW+ Decoder</p>
                  </div>
                  {selectedPlayer === 'mxplayer' && <Check className="w-4 h-4 text-orange-400" />}
                </button>
              ) : (
                <button
                  type="button"
                  onClick={() => setSelectedPlayer('potplayer')}
                  className={`p-3 rounded-2xl border text-left transition-all flex items-center justify-between ${
                    selectedPlayer === 'potplayer'
                      ? 'bg-orange-600/20 border-orange-500 text-white shadow-md'
                      : 'bg-surfaceHover border-surfaceHover text-gray-400 hover:text-white'
                  }`}
                >
                  <div>
                    <p className="font-extrabold text-sm text-white">PotPlayer</p>
                    <p className="text-[11px] text-gray-400">Windows High-Performance</p>
                  </div>
                  {selectedPlayer === 'potplayer' && <Check className="w-4 h-4 text-orange-400" />}
                </button>
              )}
            </div>
          </div>

        </div>

        {/* Action Footer */}
        <div className="p-5 sm:p-6 border-t border-surfaceHover flex items-center justify-between gap-4 bg-background/50">
          <div className="text-xs text-gray-400 hidden sm:block">
            {selectedSource ? (
              <span>Selected: <strong className="text-white">{selectedSource.badge || `${selectedSource.resolution || 1080}p`}</strong> {selectedSource.size ? `(${selectedSource.size})` : ''}</span>
            ) : (
              <span>Choose your preferred stream quality</span>
            )}
          </div>

          <div className="flex items-center gap-3 w-full sm:w-auto">
            <button
              onClick={onClose}
              className="flex-1 sm:flex-none px-5 py-3 rounded-2xl bg-surfaceHover hover:bg-surface text-gray-300 font-bold text-xs transition-colors"
            >
              Cancel
            </button>
            <button
              onClick={handleLaunchPlayback}
              disabled={isLoading || !selectedSource}
              className="flex-1 sm:flex-none flex items-center justify-center gap-2 px-7 py-3 rounded-2xl bg-gradient-to-r from-orange-600 to-amber-600 hover:from-orange-500 hover:to-amber-500 text-white font-extrabold text-sm shadow-xl shadow-orange-600/30 disabled:opacity-40 hover:scale-105 active:scale-95 transition-all"
            >
              <Play className="w-4 h-4 fill-current" />
              <span>Play in {selectedPlayer === 'potplayer' ? 'PotPlayer' : selectedPlayer === 'mxplayer' ? 'MX Player' : 'VLC'}</span>
            </button>
          </div>
        </div>

      </div>
    </div>
  );
}
