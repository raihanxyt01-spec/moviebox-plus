import React, { useState, useEffect } from 'react';
import { 
  X, Play, Star, Calendar, Clock, Film, Tv, 
  Bookmark, Download, Check, Loader2, Languages, ListVideo,
  Settings2, Sparkles, RotateCcw
} from 'lucide-react';
import { movieboxApi } from '../api/moviebox';
import { fourkhdApi } from '../api/fourkhd';
import { getWatchHistory } from '../utils/contentFilter';
import StreamSetupModal from './StreamSetupModal';

export default function DetailsModal({ 
  item, 
  onClose, 
  onPlay, 
  isFavorite, 
  onToggleFavorite,
  preferredPlayer = 'vlc',
  onDownloadStart
}) {
  const [details, setDetails] = useState(null);
  const [isLoading, setIsLoading] = useState(true);
  const [selectedSeason, setSelectedSeason] = useState(1);
  const [selectedEpisode, setSelectedEpisode] = useState(1);
  const [activeDub, setActiveDub] = useState(null);
  const [showStreamSetupModal, setShowStreamSetupModal] = useState(false);
  const [showDownloadMenu, setShowDownloadMenu] = useState(false);
  const [downloadSources, setDownloadSources] = useState([]);
  const [isFetchingDownload, setIsFetchingDownload] = useState(false);
  const [historyRecord, setHistoryRecord] = useState(null);

  useEffect(() => {
    if (!item) return;

    let isMounted = true;
    setIsLoading(true);

    // Look for watch history to resume automatically
    const hist = getWatchHistory().find(h => h.id === item.id);
    if (hist) {
      setHistoryRecord(hist);
    }

    const is4kHd = item.provider === 'fourkhdhub' || item.id?.startsWith('fourkhd_') || item.path;
    const fetchPromise = is4kHd 
      ? fourkhdApi.getDetails(item.path || item.id) 
      : movieboxApi.getDetails(item.id);

    fetchPromise.then(res => {
      if (isMounted) {
        setDetails(res || item);
        setIsLoading(false);

        const seasonsList = res.seasons || [];
        const lastSeasonObj = seasonsList.length > 0 ? seasonsList[seasonsList.length - 1] : null;
        const latestSe = lastSeasonObj ? (lastSeasonObj.season || lastSeasonObj.number || 1) : 1;
        const latestEp = lastSeasonObj ? (lastSeasonObj.episodeCount || lastSeasonObj.episodes?.length || 1) : 1;

        if (hist && hist.season && hist.episode) {
          setSelectedSeason(hist.season);
          setSelectedEpisode(hist.episode);
        } else if (item.fromRecent || item.latestEpisode || latestEp > 1) {
          // Automatic recent/latest episode selection as requested
          setSelectedSeason(latestSe);
          setSelectedEpisode(latestEp);
        } else {
          setSelectedSeason(1);
          setSelectedEpisode(1);
        }
      }
    }).catch(err => {
      console.error('Failed to load details:', err);
      if (isMounted) {
        setDetails(item);
        setIsLoading(false);
      }
    });

    return () => { isMounted = false; };
  }, [item]);

  if (!item) return null;

  const currentDetails = details || item;
  const isSeries = currentDetails.type === 'Series';

  const seasons = currentDetails.seasons || [];
  const latestSeasonObj = seasons.length > 0 ? seasons[seasons.length - 1] : null;
  const latestSeNum = latestSeasonObj ? (latestSeasonObj.season || latestSeasonObj.number || 1) : 1;
  const latestEpNum = latestSeasonObj ? (latestSeasonObj.episodeCount || latestSeasonObj.episodes?.length || 1) : 1;

  const currentSeasonData = seasons.find(s => s.season === selectedSeason || s.number === selectedSeason) || seasons[0];
  const episodeCount = currentSeasonData?.episodeCount || currentSeasonData?.episodes?.length || (isSeries ? 12 : 1);

  // Trigger download options
  const handleDownloadClick = async () => {
    setIsFetchingDownload(true);
    setShowDownloadMenu(true);
    try {
      const is4kHd = item.provider === 'fourkhdhub' || item.id?.startsWith('fourkhd_') || item.path;
      let streams;
      if (is4kHd) {
        streams = await fourkhdApi.getPlayStreams(item.path || item.id, isSeries ? selectedSeason : 0, isSeries ? selectedEpisode : 0);
      } else {
        const subjectToUse = activeDub?.subjectId || currentDetails.id;
        streams = await movieboxApi.getPlayStreams(
          subjectToUse, 
          isSeries ? selectedSeason : 0, 
          isSeries ? selectedEpisode : 0
        );
      }
      setDownloadSources(streams?.sources || []);
    } catch (e) {
      console.error('Failed to load download streams:', e);
    } finally {
      setIsFetchingDownload(false);
    }
  };

  const executeDownload = async (sourceItem) => {
    let streamUrl = typeof sourceItem === 'string' ? sourceItem : sourceItem?.url;
    const cookie = typeof sourceItem === 'object' ? sourceItem?.cookie : '';

    if (sourceItem.mirrors && sourceItem.mirrors.length > 0 && !sourceItem.direct) {
      setIsFetchingDownload(true);
      const resolved = await fourkhdApi.resolveMirror(sourceItem.primaryMirror || sourceItem.url);
      setIsFetchingDownload(false);
      if (resolved && resolved.url) {
        streamUrl = resolved.url;
      }
    }
    if (!streamUrl) return;

    const rawTitle = currentDetails.title || 'MovieBox_Video';
    const cleanTitle = rawTitle.replace(/[\\/:*?"<>|]/g, '_');
    const filename = isSeries 
      ? `${cleanTitle}_S${selectedSeason}E${selectedEpisode}.mp4`
      : `${cleanTitle}.mp4`;

    const displayTitle = isSeries 
      ? `${currentDetails.title} S${selectedSeason}:E${selectedEpisode}` 
      : currentDetails.title;

    if (window.electronAPI && window.electronAPI.downloadFile) {
      window.electronAPI.downloadFile(streamUrl, filename, {
        title: displayTitle,
        cover: currentDetails.cover,
        cookie: cookie,
        sizeBytes: typeof sourceItem === 'object' ? sourceItem?.sizeBytes : 0,
        resolution: typeof sourceItem === 'object' ? sourceItem?.resolution : 1080,
        isDash: typeof sourceItem === 'object' ? (sourceItem?.isDash || streamUrl.includes('.mpd') || streamUrl.includes('/dash/')) : false
      });
      if (onDownloadStart) onDownloadStart(displayTitle);
    } else {
      const a = document.createElement('a');
      a.href = streamUrl;
      a.download = filename;
      a.target = '_blank';
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
      if (onDownloadStart) onDownloadStart(displayTitle);
    }
    setShowDownloadMenu(false);
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-3 sm:p-6 bg-black/85 backdrop-blur-md animate-in fade-in duration-200">
      <div className="relative w-full max-w-4xl max-h-[90vh] bg-surface rounded-3xl overflow-hidden shadow-2xl border border-surfaceHover flex flex-col">
        
        {/* Close Button */}
        <button
          onClick={onClose}
          className="absolute top-4 right-4 z-20 p-2.5 rounded-full bg-black/60 hover:bg-black/90 text-white transition-all backdrop-blur-sm"
        >
          <X className="w-5 h-5" />
        </button>

        {/* Modal Scroll Area */}
        <div className="overflow-y-auto flex-1">
          
          {/* Header Banner */}
          <div className="relative w-full h-64 sm:h-80 overflow-hidden bg-background">
            <img
              src={currentDetails.cover}
              alt={currentDetails.title}
              className="w-full h-full object-cover object-top filter brightness-60"
            />
            <div className="absolute inset-0 bg-gradient-to-t from-surface via-surface/40 to-transparent" />
            
            <div className="absolute bottom-4 left-6 sm:left-8 right-6 flex items-end gap-6">
              {/* Poster Thumbnail */}
              <div className="hidden sm:block w-32 h-48 rounded-2xl overflow-hidden shadow-2xl border-2 border-surface flex-shrink-0">
                <img
                  src={currentDetails.cover}
                  alt={currentDetails.title}
                  className="w-full h-full object-cover"
                />
              </div>

              {/* Title and Badges */}
              <div className="flex-1">
                <div className="flex flex-wrap items-center gap-2 mb-2">
                  <span className={`px-2.5 py-0.5 rounded-full text-[11px] font-bold tracking-wider uppercase ${
                    isSeries ? 'bg-primary text-white' : 'bg-accent text-white'
                  }`}>
                    {currentDetails.type}
                  </span>
                  {activeDub && (
                    <span className="px-2.5 py-0.5 rounded-full text-[11px] font-bold bg-orange-600 text-white flex items-center gap-1 shadow-sm">
                      <Languages className="w-3 h-3" />
                      {activeDub.label}
                    </span>
                  )}
                  {currentDetails.year && (
                    <span className="flex items-center gap-1 text-xs text-gray-300">
                      <Calendar className="w-3.5 h-3.5 text-gray-400" />
                      {currentDetails.year}
                    </span>
                  )}
                  {currentDetails.duration && (
                    <span className="flex items-center gap-1 text-xs text-gray-300">
                      <Clock className="w-3.5 h-3.5 text-gray-400" />
                      {currentDetails.duration}
                    </span>
                  )}
                  {currentDetails.rating && currentDetails.rating !== 'N/A' && (
                    <span className="flex items-center gap-1 text-xs font-bold text-yellow-400">
                      <Star className="w-3.5 h-3.5 fill-yellow-400" />
                      {currentDetails.rating}
                    </span>
                  )}
                </div>

                <h2 className="text-2xl sm:text-4xl font-black text-white tracking-tight drop-shadow">
                  {currentDetails.title} {activeDub && <span className="text-orange-400 text-xl sm:text-2xl font-bold ml-1">[{activeDub.label}]</span>}
                </h2>
              </div>
            </div>
          </div>

          {/* Body Content */}
          <div className="p-6 sm:p-8 space-y-6">
            
            {/* Quick Actions */}
            <div className="space-y-3">
              <div className="flex flex-wrap items-center gap-3">
                {/* Primary Action: Watch Now (Integrated Player) */}
                <button
                  onClick={() => onPlay(currentDetails, isSeries ? selectedSeason : 0, isSeries ? selectedEpisode : 0, null, null, null, activeDub)}
                  className="flex items-center gap-2 px-6 py-3 rounded-xl bg-gradient-to-r from-orange-600 to-amber-600 hover:from-orange-500 hover:to-amber-500 text-white font-bold text-sm shadow-xl shadow-orange-600/30 hover:scale-105 active:scale-95 transition-all"
                  title="Play immediately in integrated MovieBox+ player"
                >
                  <Play className="w-4 h-4 fill-current" />
                  <span>
                    {isSeries 
                      ? `Watch S${selectedSeason}:E${selectedEpisode}` 
                      : 'Watch Now (Ultra HD)'}
                  </span>
                </button>

                {/* Stream Configuration Button (Select Quality, Language & Subtitle) */}
                <button
                  onClick={() => setShowStreamSetupModal(true)}
                  className="flex items-center gap-2 px-4 py-3 rounded-xl bg-orange-600/20 hover:bg-orange-600/30 text-orange-400 hover:text-white font-bold text-sm border border-orange-500/40 hover:border-orange-500 transition-all shadow-sm"
                  title="Configure quality, audio language, and subtitles before playing"
                >
                  <Settings2 className="w-4 h-4" />
                  <span>Select Quality & Dub</span>
                </button>

                {/* Download Button */}
                <div className="relative">
                  <button
                    onClick={handleDownloadClick}
                    className="flex items-center gap-2 px-5 py-3 rounded-xl bg-surfaceHover hover:bg-surfaceHover/80 text-white font-semibold text-sm border border-surfaceHover hover:border-accent/40 transition-all"
                  >
                    <Download className="w-4 h-4 text-accent" />
                    Download
                  </button>

                  {showDownloadMenu && (
                    <div className="absolute left-0 bottom-full mb-2 w-64 bg-surface/98 border border-surfaceHover rounded-2xl p-2 shadow-2xl z-30 divide-y divide-surfaceHover">
                      <div className="px-3 py-1.5 text-[11px] font-bold text-gray-400 flex items-center justify-between">
                        <span>Select Download Quality</span>
                        <X className="w-3.5 h-3.5 cursor-pointer" onClick={() => setShowDownloadMenu(false)} />
                      </div>
                      <div className="py-1">
                        {isFetchingDownload ? (
                          <div className="p-4 text-center text-xs text-gray-400 flex items-center justify-center gap-2">
                            <Loader2 className="w-4 h-4 animate-spin text-accent" /> Resolving links...
                          </div>
                        ) : downloadSources.length > 0 ? (
                          downloadSources.map((s, idx) => (
                            <button
                              key={idx}
                              onClick={() => executeDownload(s)}
                              className="w-full text-left px-3.5 py-2.5 rounded-xl text-xs hover:bg-orange-600 hover:text-white flex items-center justify-between transition-all text-gray-200 group"
                            >
                              <div className="flex items-center gap-2">
                                <span className="font-extrabold text-white group-hover:text-white">
                                  {s.badge || `${s.resolution || 1080}p`}
                                </span>
                                <span className="text-[10px] text-gray-400 group-hover:text-white/80">
                                  {s.format || 'MP4'}
                                </span>
                              </div>
                              {s.size && (
                                <span className="text-[11px] font-bold text-orange-400 group-hover:text-white">
                                  {s.size}
                                </span>
                              )}
                            </button>
                          ))
                        ) : (
                          <p className="p-3 text-xs text-gray-400 text-center">No download links available.</p>
                        )}
                      </div>
                    </div>
                  )}
                </div>

                {/* Favorite */}
                <button
                  onClick={() => onToggleFavorite(currentDetails)}
                  className={`p-3 rounded-xl border transition-all ${
                    isFavorite 
                      ? 'bg-accent/20 border-accent text-accent' 
                      : 'bg-surfaceHover border-transparent text-gray-300 hover:text-white'
                  }`}
                >
                  <Bookmark className={`w-4 h-4 ${isFavorite ? 'fill-current' : ''}`} />
                </button>
              </div>

              {/* Automatic Recent Episode / Resume Quick Jump Bar */}
              {isSeries && (
                <div className="flex flex-wrap items-center gap-2 pt-1">
                  <span className="text-[11px] font-bold text-gray-400 uppercase tracking-wider mr-1">
                    Quick Jump:
                  </span>

                  {historyRecord && (
                    <button
                      type="button"
                      onClick={() => {
                        setSelectedSeason(historyRecord.season || 1);
                        setSelectedEpisode(historyRecord.episode || 1);
                      }}
                      className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all flex items-center gap-1.5 border ${
                        selectedSeason === historyRecord.season && selectedEpisode === historyRecord.episode
                          ? 'bg-accent/20 border-accent text-accent shadow-sm'
                          : 'bg-surfaceHover border-surfaceHover text-gray-300 hover:text-white'
                      }`}
                    >
                      <RotateCcw className="w-3.5 h-3.5 text-accent" />
                      Resume S{historyRecord.season}:E{historyRecord.episode}
                    </button>
                  )}

                  <button
                    type="button"
                    onClick={() => {
                      setSelectedSeason(latestSeNum);
                      setSelectedEpisode(latestEpNum);
                    }}
                    className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all flex items-center gap-1.5 border ${
                      selectedSeason === latestSeNum && selectedEpisode === latestEpNum
                        ? 'bg-orange-600/20 border-orange-500 text-orange-400 shadow-sm'
                        : 'bg-surfaceHover border-surfaceHover text-gray-300 hover:text-white'
                    }`}
                  >
                    <Sparkles className="w-3.5 h-3.5 text-orange-400" />
                    Latest: S{latestSeNum}:E{latestEpNum}
                  </button>

                  <button
                    type="button"
                    onClick={() => {
                      setSelectedSeason(1);
                      setSelectedEpisode(1);
                    }}
                    className={`px-3 py-1.5 rounded-xl text-xs font-bold transition-all flex items-center gap-1.5 border ${
                      selectedSeason === 1 && selectedEpisode === 1
                        ? 'bg-surface border-gray-400 text-white shadow-sm'
                        : 'bg-surfaceHover border-surfaceHover text-gray-400 hover:text-white'
                    }`}
                  >
                    Start Ep 1 (S1:E1)
                  </button>
                </div>
              )}
            </div>

            {/* Synopsis */}
            <div>
              <h3 className="text-xs font-bold uppercase tracking-wider text-gray-400 mb-2">
                Synopsis
              </h3>
              <p className="text-sm text-gray-300 leading-relaxed">
                {currentDetails.synopsis || 'High-definition stream with zero latency and direct in-memory playback.'}
              </p>
            </div>

            {/* Audio Languages / Dubs if available (Interactive & Clickable) */}
            {currentDetails.dubs && currentDetails.dubs.length > 0 && (
              <div>
                <div className="flex items-center justify-between mb-2">
                  <h3 className="text-xs font-bold uppercase tracking-wider text-gray-400 flex items-center gap-1.5">
                    <Languages className="w-3.5 h-3.5 text-orange-400" /> Select Audio Language / Dub
                  </h3>
                  <span className="text-[11px] text-orange-400 font-semibold">
                    {activeDub ? `Active: ${activeDub.label}` : 'Default Audio'}
                  </span>
                </div>

                <div className="flex flex-wrap gap-2">
                  <button
                    type="button"
                    onClick={() => setActiveDub(null)}
                    className={`px-3.5 py-1.5 rounded-xl text-xs font-bold transition-all border flex items-center gap-1.5 ${
                      !activeDub
                        ? 'bg-orange-600 border-orange-500 text-white shadow-lg shadow-orange-600/30 scale-105'
                        : 'bg-surfaceHover border-surfaceHover hover:border-gray-500 text-gray-300 hover:text-white'
                    }`}
                  >
                    {!activeDub && <Check className="w-3.5 h-3.5 text-white" />}
                    Original Audio
                  </button>

                  {currentDetails.dubs.map((d, idx) => {
                    const isSelected = activeDub?.subjectId === d.subjectId;
                    return (
                      <button
                        key={idx}
                        type="button"
                        onClick={() => setActiveDub(d)}
                        className={`px-3.5 py-1.5 rounded-xl text-xs font-bold transition-all border flex items-center gap-1.5 ${
                          isSelected
                            ? 'bg-orange-600 border-orange-500 text-white shadow-lg shadow-orange-600/30 scale-105'
                            : 'bg-surfaceHover border-surfaceHover hover:border-gray-500 text-gray-300 hover:text-white'
                        }`}
                      >
                        {isSelected && <Check className="w-3.5 h-3.5 text-white" />}
                        <span>{d.label}</span>
                      </button>
                    );
                  })}
                </div>
              </div>
            )}

            {/* TV Series Seasons & Episodes */}
            {isSeries && (
              <div className="pt-4 border-t border-surfaceHover">
                <div className="flex items-center justify-between mb-4">
                  <h3 className="text-sm font-bold text-white flex items-center gap-2">
                    <Tv className="w-4 h-4 text-primary" />
                    Episodes & Seasons
                  </h3>

                  {seasons.length > 1 && (
                    <select
                      value={selectedSeason}
                      onChange={(e) => {
                        setSelectedSeason(Number(e.target.value));
                        setSelectedEpisode(1);
                      }}
                      className="bg-surfaceHover text-white text-xs rounded-xl px-3 py-1.5 focus:outline-none focus:ring-1 focus:ring-accent border border-surfaceHover"
                    >
                      {seasons.map((s, idx) => (
                        <option key={idx} value={s.season || s.number || idx + 1}>
                          Season {s.season || s.number || idx + 1}
                        </option>
                      ))}
                    </select>
                  )}
                </div>

                {/* Episodes Grid */}
                <div className="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 gap-2.5">
                  {[...Array(episodeCount)].map((_, i) => {
                    const epNum = i + 1;
                    const isSelected = selectedEpisode === epNum;
                    const isLatestInSeason = epNum === episodeCount && selectedSeason === latestSeNum;

                    return (
                      <button
                        key={epNum}
                        onClick={() => {
                          setSelectedEpisode(epNum);
                          onPlay(currentDetails, selectedSeason, epNum, null, null, null, activeDub);
                        }}
                        className={`relative p-3 rounded-xl text-center text-xs font-bold transition-all ${
                          isSelected
                            ? 'bg-gradient-to-r from-orange-600 to-amber-600 text-white shadow-lg shadow-orange-600/30 scale-105'
                            : 'bg-surfaceHover hover:bg-surfaceHover/70 text-gray-300 hover:text-white'
                        }`}
                        title={`Play Season ${selectedSeason} Episode ${epNum}`}
                      >
                        EP {epNum}
                        {isLatestInSeason && (
                          <span className="absolute -top-1.5 -right-1.5 px-1 py-0.2 bg-red-500 text-white text-[8px] font-black rounded-full uppercase tracking-tighter">
                            New
                          </span>
                        )}
                      </button>
                    );
                  })}
                </div>
              </div>
            )}

          </div>

        </div>

        {/* Stream Quality & Setup Modal */}
        {showStreamSetupModal && (
          <StreamSetupModal
            item={currentDetails}
            season={isSeries ? selectedSeason : 0}
            episode={isSeries ? selectedEpisode : 0}
            initialDub={activeDub}
            preferredPlayer={preferredPlayer}
            onLaunchExternal={(config) => {
              if (config.dub) setActiveDub(config.dub);
              onPlay(currentDetails, isSeries ? selectedSeason : 0, isSeries ? selectedEpisode : 0, null, config.source, config.subtitleUrl, config.dub || activeDub);
            }}
            onClose={() => setShowStreamSetupModal(false)}
          />
        )}

      </div>
    </div>
  );
}
