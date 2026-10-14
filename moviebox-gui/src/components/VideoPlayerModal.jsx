import React, { useState, useEffect, useRef, useCallback } from 'react';
import { 
  X, Play, Pause, Volume2, VolumeX, Maximize, Minimize, Settings, 
  SkipForward, SkipBack, Download, ListVideo, Loader2, 
  Languages, Check, ArrowRight, RotateCcw, RotateCw, 
  Subtitles, Gauge, HelpCircle, Lock, Unlock, PictureInPicture,
  Tv, Film, AlertCircle, FileText
} from 'lucide-react';
import Hls from 'hls.js';
import dashjs from 'dashjs';
import { movieboxApi } from '../api/moviebox';
import { fourkhdApi } from '../api/fourkhd';
import { saveWatchHistoryItem } from '../utils/contentFilter';
import { launchVlcPlayback } from '../utils/vlcLauncher';

export default function VideoPlayerModal({ 
  item, 
  season = 0, 
  episode = 0, 
  onClose, 
  onNavigateEpisode
}) {
  const [sources, setSources] = useState([]);
  const [selectedSource, setSelectedSource] = useState(null);
  const [subtitles, setSubtitles] = useState([]);
  const [selectedSubtitle, setSelectedSubtitle] = useState('off');
  const [externalSubtitles, setExternalSubtitles] = useState([]);
  
  // Real Audio & Quality tracks
  const [audioTracks, setAudioTracks] = useState([]);
  const [selectedAudioTrack, setSelectedAudioTrack] = useState(-1);
  const [qualityLevels, setQualityLevels] = useState([]);
  const [isQualityLocked, setIsQualityLocked] = useState(false);
  const [lockedQualityHeight, setLockedQualityHeight] = useState(null);
  const isQualityLockedRef = useRef(false);
  const lockedQualityHeightRef = useRef(null);
  const pendingSeekRef = useRef(null);
  const [toastMessage, setToastMessage] = useState(null);
  const toastTimerRef = useRef(null);

  const showToast = (msg) => {
    setToastMessage(msg);
    if (toastTimerRef.current) clearTimeout(toastTimerRef.current);
    toastTimerRef.current = setTimeout(() => setToastMessage(null), 2500);
  };

  // Playback state
  const [isLoading, setIsLoading] = useState(true);
  const [isPlaying, setIsPlaying] = useState(false);
  const [isMuted, setIsMuted] = useState(false);
  const [volume, setVolume] = useState(() => {
    const saved = localStorage.getItem('mb_volume');
    return saved !== null ? Number(saved) : 1;
  });
  const [progress, setProgress] = useState(0);
  const [currentTime, setCurrentTime] = useState(0);
  const [duration, setDuration] = useState(0);
  const [playbackSpeed, setPlaybackSpeed] = useState(() => {
    const saved = localStorage.getItem('mb_preferred_speed');
    return saved !== null ? Number(saved) : 1;
  });
  
  // Controls & UI Overlays
  const [controlsVisible, setControlsVisible] = useState(true);
  const [isLocked, setIsLocked] = useState(false);
  const [isFullscreen, setIsFullscreen] = useState(false);
  const [isLongPressing2x, setIsLongPressing2x] = useState(false);
  const [seekFeedback, setSeekFeedback] = useState(null); // { type: 'forward' | 'rewind', seconds: 10 }
  const [showSettingsMenu, setShowSettingsMenu] = useState(false);
  const [showSpeedMenu, setShowSpeedMenu] = useState(false);
  const [showQualityMenu, setShowQualityMenu] = useState(false);
  const [showAudioMenu, setShowAudioMenu] = useState(false);
  const [showSubtitleMenu, setShowSubtitleMenu] = useState(false);
  const [showEpisodeDrawer, setShowEpisodeDrawer] = useState(false);
  const [showHelpModal, setShowHelpModal] = useState(false);
  const [autoNextCountdown, setAutoNextCountdown] = useState(null);
  const [errorMsg, setErrorMsg] = useState(null);

  const containerRef = useRef(null);
  const videoRef = useRef(null);
  const hlsRef = useRef(null);
  const dashRef = useRef(null);
  const controlsTimeoutRef = useRef(null);
  const longPressTimerRef = useRef(null);
  const doubleTapTimerRef = useRef({ lastTap: 0, x: 0 });
  const previousSpeedRef = useRef(1);
  const fileInputRef = useRef(null);

  const isSeries = item?.type === 'Series';
  const currentEpNumber = isSeries ? (episode > 0 ? episode : 1) : 0;
  const currentSeNumber = isSeries ? (season > 0 ? season : 1) : 0;

  const [seasonsData, setSeasonsData] = useState(item?.seasons || []);
  const [drawerSeason, setDrawerSeason] = useState(currentSeNumber > 0 ? currentSeNumber : 1);
  const [dubsData, setDubsData] = useState(item?.dubs || []);
  const [activeSubjectId, setActiveSubjectId] = useState(item?.id);
  const [showPrePlayPicker, setShowPrePlayPicker] = useState(false);

  // Fetch series details & audio dubs if missing
  useEffect(() => {
    let isMounted = true;
    if (item?.id) {
      movieboxApi.getDetails(item.id).then(details => {
        if (!isMounted) return;
        if (details.seasons && details.seasons.length > 0) {
          setSeasonsData(details.seasons);
        }
        if (details.dubs && details.dubs.length > 0) {
          setDubsData(details.dubs);
          setAudioTracks(details.dubs.map((d, idx) => ({
            index: idx,
            subjectId: d.subjectId,
            language: d.language,
            label: d.label
          })));
        }
      }).catch(err => console.warn('Could not load details:', err));
    }
    return () => { isMounted = false; };
  }, [item?.id]);

  const currentSeasonObj = seasonsData.find(s => s.season === currentSeNumber || s.number === currentSeNumber) || seasonsData[0];
  const totalEpisodesInSeason = currentSeasonObj?.episodeCount || currentSeasonObj?.maxEp || currentSeasonObj?.episodes?.length || 24;
  const hasNextEpisode = isSeries && currentEpNumber < totalEpisodesInSeason;
  const hasPrevEpisode = isSeries && currentEpNumber > 1;

  const resumeKey = isSeries 
    ? `mb_resume_${item.id}_s${currentSeNumber}_e${currentEpNumber}`
    : `mb_resume_${item.id}`;

  // Reset controls auto-hide timer
  const resetControlsTimeout = useCallback(() => {
    if (isLocked) return;
    setControlsVisible(true);
    if (controlsTimeoutRef.current) clearTimeout(controlsTimeoutRef.current);
    
    // Do not auto-hide if a menu is open or paused
    const anyMenuOpen = showSettingsMenu || showSpeedMenu || showQualityMenu || 
                        showAudioMenu || showSubtitleMenu || showEpisodeDrawer || showHelpModal || showPrePlayPicker;
    
    if (isPlaying && !anyMenuOpen) {
      controlsTimeoutRef.current = setTimeout(() => {
        setControlsVisible(false);
      }, 3500);
    }
  }, [isPlaying, isLocked, showSettingsMenu, showSpeedMenu, showQualityMenu, showAudioMenu, showSubtitleMenu, showEpisodeDrawer, showHelpModal, showPrePlayPicker]);

  // Load stream sources for item
  useEffect(() => {
    let isMounted = true;
    setIsLoading(true);
    setErrorMsg(null);
    setAutoNextCountdown(null);
    setIsQualityLocked(false);
    isQualityLockedRef.current = false;
    setLockedQualityHeight(null);
    lockedQualityHeightRef.current = null;
    setQualityLevels([]);

    // If local offline video
    if (item.offlineUrl || item.localPath || (item.url && (item.url.startsWith('file:') || item.url.startsWith('blob:')))) {
      const offlineUrl = item.offlineUrl || item.url || (item.localPath ? `file://${item.localPath.replace(/\\/g, '/')}` : '');
      const src = {
        label: 'Local File (Offline)',
        resolution: 1080,
        badge: '1080p',
        size: 'Local',
        format: 'MP4',
        codec: 'HEVC',
        source: 'Local Storage',
        release: item.title,
        url: offlineUrl,
        direct: true
      };
      setSources([src]);
      setSelectedSource(src);
      setIsLoading(false);
      return;
    }

    const is4kHd = item?.provider === 'fourkhdhub' || item?.id?.startsWith('fourkhd_') || item?.path;
    const fetchStreamPromise = is4kHd
      ? fourkhdApi.getPlayStreams(item.path || item.id, currentSeNumber, currentEpNumber)
      : movieboxApi.getPlayStreams(activeSubjectId || item.id, currentSeNumber, currentEpNumber);

    fetchStreamPromise.then(async (res) => {
      if (!isMounted) return;

      let sourcesList = res.sources || [];
      let subList = res.subtitles || [];

      // Auto-fallback: if MovieBox has 0 sources, automatically search and load from 4K HD Hub
      if (sourcesList.length === 0 && item?.title && !is4kHd) {
        showToast('Checking alternative 4K HD Hub streams...');
        try {
          const fallbackResults = await fourkhdApi.search(item.title);
          if (fallbackResults && fallbackResults.length > 0) {
            const best = fallbackResults[0];
            const fallbackRes = await fourkhdApi.getPlayStreams(best.path || best.id, currentSeNumber, currentEpNumber);
            if (fallbackRes.sources && fallbackRes.sources.length > 0) {
              sourcesList = fallbackRes.sources;
              subList = fallbackRes.subtitles || [];
              showToast(`Auto-switched to 4K HD Hub (${sourcesList.length} streams found)`);
            }
          }
        } catch (fbErr) {
          console.warn('Fallback search error:', fbErr);
        }
      }

      if (sourcesList.length > 0) {
        setSources(sourcesList);
        // Automatically select the HIGHEST available quality by default
        setSelectedSource(sourcesList[0]);
        setSubtitles(subList);
        
        // Auto-select English subtitle if available, otherwise first available subtitle
        if (res.defaultSubtitle && res.defaultSubtitle !== 'off') {
          setSelectedSubtitle(res.defaultSubtitle);
        }

        const topBadge = sourcesList[0]?.badge || '1080p';
        const sizeInfo = sourcesList[0]?.size ? ` (${sourcesList[0].size})` : '';
        showToast(`Playing ${topBadge}${sizeInfo} - Highest Quality`);
      } else {
        setErrorMsg('No available stream sources found for this title.');
      }
      setIsLoading(false);
    }).catch(async (err) => {
      console.error('Failed to load video streams:', err);
      if (!isMounted) return;

      // Try fallback to 4K HD Hub on error
      if (item?.title) {
        showToast('Checking alternative 4K HD Hub streams...');
        try {
          const fallbackResults = await fourkhdApi.search(item.title);
          if (fallbackResults && fallbackResults.length > 0) {
            const best = fallbackResults[0];
            const fallbackRes = await fourkhdApi.getPlayStreams(best.path || best.id, currentSeNumber, currentEpNumber);
            if (fallbackRes.sources && fallbackRes.sources.length > 0) {
              setSources(fallbackRes.sources);
              setSelectedSource(fallbackRes.sources[0]);
              setSubtitles(fallbackRes.subtitles || []);
              setIsLoading(false);
              showToast(`Auto-switched to 4K HD Hub (${fallbackRes.sources.length} streams found)`);
              return;
            }
          }
        } catch (fbErr) {
          console.warn('Fallback search error:', fbErr);
        }
      }

      setErrorMsg('Stream could not be loaded. Please check your connection or choose another title.');
      setIsLoading(false);
    });

    return () => { isMounted = false; };
  }, [item, currentSeNumber, currentEpNumber, activeSubjectId]);

  // Attach stream to player engine
  useEffect(() => {
    if (!selectedSource || !videoRef.current) return;

    let isCancelled = false;
    const video = videoRef.current;
    let streamUrl = selectedSource.url;
    const isDash = selectedSource.isDash || streamUrl.includes('.mpd');
    const isHls = streamUrl.includes('.m3u8');

    // Clean up previous engine instances
    if (hlsRef.current) {
      hlsRef.current.destroy();
      hlsRef.current = null;
    }
    if (dashRef.current) {
      dashRef.current.destroy();
      dashRef.current = null;
    }

    const initEngine = async () => {
      // Resolve mirror link if it's an unresolved 4K HD Hub stream
      if (selectedSource.mirrors && selectedSource.mirrors.length > 0 && !selectedSource.direct) {
        showToast(`Connecting to ${selectedSource.badge || '4K'} stream...`);
        try {
          const resolved = await fourkhdApi.resolveMirror(selectedSource.primaryMirror || selectedSource.url);
          if (resolved && resolved.url) {
            streamUrl = resolved.url;
          }
        } catch (e) {
          console.warn('Mirror resolution failed:', e);
        }
      }

      if (isCancelled) return;

      // In Electron environment, route DASH, authenticated, and all direct CDN streams through the local proxy
      if (window.electronAPI?.getProxyUrl && streamUrl && (streamUrl.startsWith('http://') || streamUrl.startsWith('https://'))) {
        try {
          streamUrl = await window.electronAPI.getProxyUrl(streamUrl, selectedSource.cookie || '');
        } catch (e) {
          console.warn('Proxy URL resolve error:', e);
        }
      }

      if (isCancelled) return;

      if (isDash) {
        try {
          const player = dashjs.MediaPlayer().create();
          
          player.updateSettings({
            streaming: {
              lowLatencyEnabled: false,
              fastSwitchEnabled: true,
              jumpGaps: true,
              buffer: {
                fastSwitchEnabled: true,
                initialBufferTarget: 4.0,
                bufferTimeAtTopQuality: 40,
                stableBufferTime: 25,
                bufferToKeep: 90,
                stallThreshold: 0.5,
              },
              abr: {
                autoSwitchBitrate: { video: true, audio: true },
                ABRStrategy: 'abrBola',
                switchSensitivity: 0.5,
                bandwidthSafetyFactor: 0.9,
              }
            }
          });

          player.initialize(video, streamUrl, true);
          dashRef.current = player;

          player.on(dashjs.MediaPlayer.events.STREAM_INITIALIZED, () => {
            // Enumerate real video qualities
            const bitrates = player.getBitrateInfoListFor('video') || [];
            const qList = bitrates.map((b, idx) => ({
              index: idx,
              height: b.height || 1080,
              bitrate: b.bitrate ? `${Math.round(b.bitrate / 1000)}k` : '',
              label: `${b.height || 1080}p ${b.bitrate ? `(${Math.round(b.bitrate / 1000)} kbps)` : ''}`
            }));
            setQualityLevels(qList);

            // Automatically lock to the target quality or highest available DASH quality by default
            if (bitrates.length > 0) {
              let targetIdx = -1;
              const targetHeight = selectedSource.targetHeight || lockedQualityHeightRef.current;
              if (targetHeight) {
                targetIdx = bitrates.findIndex(b => b.height === targetHeight);
              }
              if (targetIdx === -1) {
                // Find highest resolution / bitrate representation
                targetIdx = bitrates.reduce((best, cur, idx) => {
                  const curScore = (cur.height || 0) * 1000000 + (cur.bitrate || 0);
                  const bestScore = (bitrates[best]?.height || 0) * 1000000 + (bitrates[best]?.bitrate || 0);
                  return curScore >= bestScore ? idx : best;
                }, 0);
              }

              // Lock DASH quality to target/highest available by default (disable auto-switching down)
              player.setAutoSwitchQualityFor('video', false);
              player.setQualityFor('video', targetIdx);
            }

            // Enumerate real audio tracks (preserve dubs if available)
            const audios = player.getTracksFor('audio') || [];
            if (audios.length > 0) {
              setAudioTracks(audios.map((a, idx) => ({
                index: idx,
                lang: a.lang || 'Unknown',
                label: a.labels?.[0]?.text || a.lang || `Track ${idx + 1}`
              })));
            } else if (dubsData && dubsData.length > 0) {
              setAudioTracks(dubsData.map((d, idx) => ({
                index: idx,
                subjectId: d.subjectId,
                language: d.language,
                label: d.label
              })));
            }

            // Enumerate embedded subtitles
            const subs = player.getTracksFor('text') || [];
            if (subs.length > 0) {
              setSubtitles(prev => [
                ...prev,
                ...subs.map(s => ({
                  label: s.labels?.[0]?.text || s.lang || 'Embedded',
                  lang: s.lang,
                  isDashTrack: true,
                  trackObj: s
                }))
              ]);
            }
          });

          player.on(dashjs.MediaPlayer.events.ERROR, (e) => {
            console.warn('DASH playback event:', e);
          });

          const restorePosition = (dashPlayer) => {
            const seekTarget = pendingSeekRef.current !== null 
              ? pendingSeekRef.current 
              : Number(localStorage.getItem(resumeKey) || 0);
            pendingSeekRef.current = null;
            if (seekTarget > 0) {
              try {
                if (dashPlayer && dashPlayer.seek) {
                  dashPlayer.seek(seekTarget);
                } else if (video) {
                  video.currentTime = seekTarget;
                }
              } catch (e) {}
            }
          };

          restorePosition(player);
        } catch (dashErr) {
          console.error('dashjs initialization error:', dashErr);
          video.src = streamUrl;
          video.load();
        }
      } else if (isHls && Hls.isSupported()) {
        const hls = new Hls({
          enableWorker: true,
          lowLatencyMode: false,
          backBufferLength: 120,
          maxBufferLength: 60,
          maxMaxBufferLength: 120,
          maxBufferSize: 128 * 1024 * 1024,
          maxBufferHole: 0.5,
        });
        hls.loadSource(streamUrl);
        hls.attachMedia(video);
        hlsRef.current = hls;

        hls.on(Hls.Events.MANIFEST_PARSED, (event, data) => {
          if (data.levels && data.levels.length > 0) {
            setQualityLevels(data.levels.map((lvl, idx) => ({
              index: idx,
              height: lvl.height || 720,
              label: `${lvl.height || 720}p`
            })));

            // Automatically lock to the highest available HLS level by default
            let targetIdx = -1;
            if (isQualityLockedRef.current && lockedQualityHeightRef.current) {
              targetIdx = data.levels.findIndex(l => l.height === lockedQualityHeightRef.current);
            }
            if (targetIdx === -1) {
              targetIdx = data.levels.reduce((best, cur, idx) => {
                return (cur.height || 0) >= (data.levels[best]?.height || 0) ? idx : best;
              }, 0);
            }
            hls.currentLevel = targetIdx;
          }

          const seekTarget = pendingSeekRef.current !== null 
            ? pendingSeekRef.current 
            : Number(localStorage.getItem(resumeKey) || 0);
          pendingSeekRef.current = null;
          if (seekTarget > 0) {
            video.currentTime = seekTarget;
          }
          video.play().catch(() => {});
        });
      } else {
        video.src = streamUrl;
        video.load();

        const seekTarget = pendingSeekRef.current !== null 
          ? pendingSeekRef.current 
          : Number(localStorage.getItem(resumeKey) || 0);
        pendingSeekRef.current = null;
        if (seekTarget > 0) {
          video.currentTime = seekTarget;
        }
        video.play().catch(() => {});
      }

      // Apply initial volume and playback speed
      video.volume = volume;
      video.playbackRate = playbackSpeed;
    };

    initEngine();

    return () => {
      isCancelled = true;
      if (hlsRef.current) {
        hlsRef.current.destroy();
        hlsRef.current = null;
      }
      if (dashRef.current) {
        dashRef.current.destroy();
        dashRef.current = null;
      }
    };
  }, [selectedSource]);

  // Video Time & Progress Updates
  const handleTimeUpdate = () => {
    const video = videoRef.current;
    if (!video) return;

    setCurrentTime(video.currentTime);
    setDuration(video.duration || 0);
    setProgress((video.currentTime / (video.duration || 1)) * 100);

    // Save playback position periodically
    if (Math.floor(video.currentTime) % 5 === 0) {
      localStorage.setItem(resumeKey, video.currentTime.toString());
      saveWatchHistoryItem(item, video.currentTime, video.duration, currentSeNumber, currentEpNumber);
    }
  };

  // Video Ended -> Trigger Autoplay Next Episode
  const handleVideoEnded = () => {
    if (hasNextEpisode && onNavigateEpisode) {
      setAutoNextCountdown(5);
      const interval = setInterval(() => {
        setAutoNextCountdown(prev => {
          if (prev <= 1) {
            clearInterval(interval);
            onNavigateEpisode(currentSeNumber, currentEpNumber + 1);
            return null;
          }
          return prev - 1;
        });
      }, 1000);
    }
  };

  const goToNextEpisode = () => {
    if (hasNextEpisode && onNavigateEpisode) {
      setIsQualityLocked(false);
      isQualityLockedRef.current = false;
      setLockedQualityHeight(null);
      lockedQualityHeightRef.current = null;
      onNavigateEpisode(currentSeNumber, currentEpNumber + 1);
    }
  };

  const goToPrevEpisode = () => {
    if (hasPrevEpisode && onNavigateEpisode) {
      setIsQualityLocked(false);
      isQualityLockedRef.current = false;
      setLockedQualityHeight(null);
      lockedQualityHeightRef.current = null;
      onNavigateEpisode(currentSeNumber, currentEpNumber - 1);
    }
  };

  // Play / Pause Toggle
  const togglePlay = () => {
    if (!videoRef.current || isLocked) return;
    if (videoRef.current.paused) {
      videoRef.current.play().then(() => setIsPlaying(true)).catch(() => {});
    } else {
      videoRef.current.pause();
      setIsPlaying(false);
    }
    resetControlsTimeout();
  };

  // Volume & Mute Controls
  const toggleMute = () => {
    if (!videoRef.current) return;
    videoRef.current.muted = !videoRef.current.muted;
    setIsMuted(videoRef.current.muted);
    resetControlsTimeout();
  };

  const handleVolumeChange = (newVol) => {
    if (!videoRef.current) return;
    const clamped = Math.max(0, Math.min(1, newVol));
    videoRef.current.volume = clamped;
    videoRef.current.muted = clamped === 0;
    setVolume(clamped);
    setIsMuted(clamped === 0);
    localStorage.setItem('mb_volume', clamped.toString());
    resetControlsTimeout();
  };

  // Seek bar scrub
  const handleSeek = (e) => {
    if (!videoRef.current || !duration || isLocked) return;
    const rect = e.currentTarget.getBoundingClientRect();
    const pos = Math.max(0, Math.min(1, (e.clientX - rect.left) / rect.width));
    const newTime = pos * duration;
    videoRef.current.currentTime = newTime;
    setProgress(pos * 100);
    resetControlsTimeout();
  };

  // Step seek (+ / - seconds)
  const stepSeek = (delta) => {
    if (!videoRef.current || !duration || isLocked) return;
    const newTime = Math.max(0, Math.min(duration, videoRef.current.currentTime + delta));
    videoRef.current.currentTime = newTime;
    setSeekFeedback({
      type: delta > 0 ? 'forward' : 'rewind',
      seconds: Math.abs(delta)
    });
    setTimeout(() => setSeekFeedback(null), 700);
    resetControlsTimeout();
  };

  // Speed selection
  const changeSpeed = (speed) => {
    if (!videoRef.current) return;
    videoRef.current.playbackRate = speed;
    setPlaybackSpeed(speed);
    localStorage.setItem('mb_preferred_speed', speed.toString());
    setShowSpeedMenu(false);
    setShowSettingsMenu(false);
    resetControlsTimeout();
  };

  // Derive comprehensive available qualities from sources & engine representations (strictly deduplicated, sorted highest to lowest, no Auto option)
  const availableQualities = React.useMemo(() => {
    const qualityMap = new Map();

    const addOrUpdate = (height, badge, label, meta) => {
      const h = Number(height);
      if (!h || isNaN(h)) return;
      if (!qualityMap.has(h)) {
        qualityMap.set(h, {
          id: `q_${h}`,
          height: h,
          badge: badge || `${h}p`,
          label: label || `${h}p`,
          ...meta
        });
      } else {
        const existing = qualityMap.get(h);
        qualityMap.set(h, { ...existing, ...meta });
      }
    };

    // 1. Add all distinct streams from sources (4K, 1080p, 720p, 480p, 360p)
    if (sources && sources.length > 0) {
      sources.forEach((src, idx) => {
        const h = Number(src.resolution) || 1080;
        let badge = src.badge;
        let label = `${h}p`;
        if (h >= 2160) { badge = '4K'; label = '2160p (4K Ultra HD)'; }
        else if (h >= 1440) { badge = '2K'; label = '1440p (2K Quad HD)'; }
        else if (h >= 1080) { badge = '1080p'; label = '1080p (Full HD)'; }
        else if (h >= 720) { badge = '720p'; label = '720p (HD)'; }
        else if (h >= 480) { badge = '480p'; label = '480p (SD)'; }
        else if (h >= 360) { badge = '360p'; label = '360p (Data Saver)'; }

        addOrUpdate(h, badge, label, {
          sourceIndex: idx,
          sourceUrl: src.url,
          isDashSource: src.isDash
        });
      });
    }

    // 2. Add DASH / HLS bitrate representations if available
    if (qualityLevels && qualityLevels.length > 0) {
      qualityLevels.forEach(q => {
        const h = Number(q.height) || 1080;
        let badge = `${h}p`;
        let label = `${h}p`;
        if (h >= 2160) { badge = '4K'; label = '2160p (4K Ultra HD)'; }
        else if (h >= 1440) { badge = '2K'; label = '1440p (2K Quad HD)'; }
        else if (h >= 1080) { badge = '1080p'; label = '1080p (Full HD)'; }
        else if (h >= 720) { badge = '720p'; label = '720p (HD)'; }
        else if (h >= 480) { badge = '480p'; label = '480p (SD)'; }
        else if (h >= 360) { badge = '360p'; label = '360p (Data Saver)'; }

        addOrUpdate(h, badge, label, {
          dashIndex: q.index,
          hlsIndex: q.index,
          bitrate: q.bitrate
        });
      });
    }

    // Sort strictly from HIGHEST resolution to LOWEST resolution (no Auto)
    const list = Array.from(qualityMap.values()).sort((a, b) => b.height - a.height);
    
    if (list.length === 0) {
      list.push({ id: 'q_1080', height: 1080, badge: '1080p', label: '1080p (Full HD)' });
    }

    return list;
  }, [sources, qualityLevels]);

  const activeQualityOption = React.useMemo(() => {
    if (isQualityLocked && lockedQualityHeight) {
      const match = availableQualities.find(q => q.height === lockedQualityHeight);
      if (match) return match;
    }
    // Default: highest available quality
    return availableQualities[0] || { height: 1080, badge: '1080p', label: '1080p (Full HD)' };
  }, [availableQualities, isQualityLocked, lockedQualityHeight]);

  const currentQualityBadge = activeQualityOption.badge;

  const selectStreamSource = (src) => {
    const video = videoRef.current;
    const curTime = video ? video.currentTime : 0;
    const h = src.resolution || 1080;

    setIsQualityLocked(true);
    isQualityLockedRef.current = true;
    setLockedQualityHeight(h);
    lockedQualityHeightRef.current = h;

    if (src.url === selectedSource?.url && src.isDash && dashRef.current) {
      const bitrates = dashRef.current.getBitrateInfoListFor('video') || [];
      const matchIdx = bitrates.findIndex(b => b.height === h);
      if (matchIdx !== -1) {
        dashRef.current.setAutoSwitchQualityFor('video', false);
        dashRef.current.setQualityFor('video', matchIdx);
        showToast(`Quality locked: ${src.badge || h + 'p'}`);
      } else {
        showToast(`Quality locked: ${src.badge || h + 'p'}`);
      }
    } else {
      pendingSeekRef.current = curTime;
      setSelectedSource(src);
      showToast(`Switched quality: ${src.badge || h + 'p'}`);
    }

    setShowQualityMenu(false);
    setShowSettingsMenu(false);
    setShowPrePlayPicker(false);
    resetControlsTimeout();
  };

  const changeQualityOption = (qOpt) => {
    const video = videoRef.current;
    const curTime = video ? video.currentTime : 0;

    setIsQualityLocked(true);
    isQualityLockedRef.current = true;
    setLockedQualityHeight(qOpt.height);
    lockedQualityHeightRef.current = qOpt.height;

    // 1. If DASH engine is active and has this DASH representation
    if (dashRef.current && qOpt.dashIndex !== undefined) {
      dashRef.current.setAutoSwitchQualityFor('video', false);
      dashRef.current.setQualityFor('video', qOpt.dashIndex);
      showToast(`Quality locked: ${qOpt.label}`);
    } 
    // 2. If HLS engine is active and has this HLS level
    else if (hlsRef.current && qOpt.hlsIndex !== undefined) {
      hlsRef.current.currentLevel = qOpt.hlsIndex;
      showToast(`Quality locked: ${qOpt.label}`);
    } 
    // 3. Match with sources
    else {
      const targetSource = sources.find(s => s.resolution === qOpt.height) || (qOpt.sourceIndex !== undefined ? sources[qOpt.sourceIndex] : null);
      if (targetSource && targetSource.url !== selectedSource?.url) {
        pendingSeekRef.current = curTime;
        setSelectedSource(targetSource);
        showToast(`Switched & locked: ${qOpt.label}`);
      } else {
        showToast(`Quality locked: ${qOpt.label}`);
      }
    }

    setShowQualityMenu(false);
    setShowSettingsMenu(false);
    setShowPrePlayPicker(false);
    resetControlsTimeout();
  };

  // Backwards compatibility helper
  const changeQuality = (index) => {
    if (qualityLevels[index]) {
      const q = qualityLevels[index];
      const match = availableQualities.find(opt => opt.height === q.height);
      if (match) changeQualityOption(match);
    }
  };

  // Audio track switch (Dash audio tracks or Audio Dubs)
  const changeAudioTrack = (index) => {
    setSelectedAudioTrack(index);
    const track = audioTracks[index];
    if (track && track.subjectId && track.subjectId !== activeSubjectId) {
      showToast(`Audio: ${track.label}`);
      setActiveSubjectId(track.subjectId);
    } else if (dashRef.current) {
      const realTracks = dashRef.current.getTracksFor('audio');
      if (realTracks && realTracks[index]) {
        dashRef.current.setCurrentTrack(realTracks[index]);
        showToast(`Audio: ${track?.label || realTracks[index].lang}`);
      }
    }
    setShowAudioMenu(false);
    resetControlsTimeout();
  };

  // Subtitle track switch
  const changeSubtitle = (subObj) => {
    if (subObj === 'off' || !subObj) {
      setSelectedSubtitle('off');
      if (dashRef.current) dashRef.current.setTextTrack(-1);
      showToast('Subtitles Off');
    } else if (subObj.isDashTrack && dashRef.current) {
      dashRef.current.setTextTrack(subObj.trackObj.index);
      setSelectedSubtitle(subObj.label);
      showToast(`Subtitle: ${subObj.label}`);
    } else {
      const label = typeof subObj === 'string' ? subObj : subObj.label;
      setSelectedSubtitle(label);
      showToast(`Subtitle: ${label}`);
    }
    setShowSubtitleMenu(false);
    resetControlsTimeout();
  };

  // External subtitle file loader (.srt / .vtt)
  const handleLoadExternalSubtitle = (e) => {
    const file = e.target.files?.[0];
    if (!file) return;

    const reader = new FileReader();
    reader.onload = (event) => {
      const text = event.target?.result;
      if (typeof text !== 'string') return;

      // Convert SRT to WebVTT format
      let vttContent = text;
      if (!vttContent.startsWith('WEBVTT')) {
        vttContent = 'WEBVTT\n\n' + vttContent
          .replace(/(\d+:\d+:\d+),(\d+)/g, '$1.$2');
      }

      const blob = new Blob([vttContent], { type: 'text/vtt' });
      const blobUrl = URL.createObjectURL(blob);

      const customSub = {
        label: file.name.replace(/\.[^/.]+$/, ''),
        url: blobUrl,
        isCustom: true
      };

      setSubtitles(prev => [customSub, ...prev]);
      setSelectedSubtitle(customSub.label);
      setShowSubtitleMenu(false);
    };
    reader.readAsText(file);
  };

  // Picture-in-picture
  const togglePictureInPicture = async () => {
    if (!videoRef.current) return;
    try {
      if (document.pictureInPictureElement) {
        await document.exitPictureInPicture();
      } else {
        await videoRef.current.requestPictureInPicture();
      }
    } catch (e) {
      console.warn('Picture-in-picture error:', e);
    }
  };

  // Fullscreen toggle
  const toggleFullscreen = () => {
    if (!containerRef.current) return;
    if (document.fullscreenElement) {
      document.exitFullscreen().then(() => setIsFullscreen(false)).catch(() => {});
    } else {
      containerRef.current.requestFullscreen().then(() => setIsFullscreen(true)).catch(() => {});
    }
  };

  // Native Download Handler
  const handleDownload = () => {
    if (!selectedSource?.url) return;
    const filename = isSeries 
      ? `${item.title.replace(/[^a-zA-Z0-9]/g, '_')}_S${currentSeNumber}E${currentEpNumber}.mp4`
      : `${item.title.replace(/[^a-zA-Z0-9]/g, '_')}.mp4`;
    
    if (window.electronAPI?.downloadFile) {
      window.electronAPI.downloadFile(selectedSource.url, filename, {
        title: isSeries ? `${item.title} S${currentSeNumber}:E${currentEpNumber}` : item.title,
        cover: item.cover,
      });
    } else {
      const a = document.createElement('a');
      a.href = selectedSource.url;
      a.download = filename;
      a.target = '_blank';
      document.body.appendChild(a);
      a.click();
      document.body.removeChild(a);
    }
  };

  const handleSwitchToVlc = async () => {
    if (!selectedSource?.url) return;
    if (videoRef.current) {
      videoRef.current.pause();
    }
    const subObj = subtitles.find(s => s.id === selectedSubtitle);
    const subUrl = subObj?.url || null;
    const title = `${item.title || 'MovieBox Video'}${isSeries ? ` S${currentSeNumber}:E${currentEpNumber}` : ''}`;
    
    showToast('🚀 Launching VLC Player (Lossless 10-bit Direct3D11 Quality)...');
    await launchVlcPlayback({
      url: selectedSource.url,
      title,
      subtitleUrl: subUrl,
      cookie: selectedSource.cookie
    });
  };

  // MOBILE GESTURES: Double-tap seek & Long-press 2X
  const handleTouchStart = (e) => {
    if (isLocked) return;
    const touch = e.touches[0];
    const now = Date.now();
    const last = doubleTapTimerRef.current.lastTap;
    const lastX = doubleTapTimerRef.current.lastX;

    // Double-tap detection (within 300ms)
    if (now - last < 300) {
      const rect = e.currentTarget.getBoundingClientRect();
      const touchX = touch.clientX - rect.left;
      if (touchX < rect.width * 0.35) {
        stepSeek(-10);
      } else if (touchX > rect.width * 0.65) {
        stepSeek(10);
      }
      doubleTapTimerRef.current = { lastTap: 0, lastX: 0 };
      if (longPressTimerRef.current) clearTimeout(longPressTimerRef.current);
      return;
    }

    doubleTapTimerRef.current = { lastTap: now, lastX: touch.clientX };

    // Long-press 2X speed detection
    longPressTimerRef.current = setTimeout(() => {
      if (videoRef.current && isPlaying) {
        previousSpeedRef.current = videoRef.current.playbackRate;
        videoRef.current.playbackRate = 2.0;
        setIsLongPressing2x(true);
      }
    }, 500);
  };

  const handleTouchEnd = () => {
    if (longPressTimerRef.current) clearTimeout(longPressTimerRef.current);
    if (isLongPressing2x && videoRef.current) {
      videoRef.current.playbackRate = previousSpeedRef.current;
      setIsLongPressing2x(false);
    }
  };

  // WINDOWS KEYBOARD SHORTCUTS
  useEffect(() => {
    const handleKeyDown = (e) => {
      // Do not capture if typing in input
      if (['INPUT', 'TEXTAREA'].includes(document.activeElement?.tagName)) return;

      switch (e.code) {
        case 'Space':
        case 'KeyK':
          e.preventDefault();
          togglePlay();
          break;
        case 'ArrowLeft':
          e.preventDefault();
          stepSeek(e.shiftKey ? -10 : -5);
          break;
        case 'ArrowRight':
          e.preventDefault();
          stepSeek(e.shiftKey ? 10 : 5);
          break;
        case 'KeyJ':
          e.preventDefault();
          stepSeek(-10);
          break;
        case 'KeyL':
          e.preventDefault();
          stepSeek(10);
          break;
        case 'ArrowUp':
          e.preventDefault();
          handleVolumeChange(volume + 0.05);
          break;
        case 'ArrowDown':
          e.preventDefault();
          handleVolumeChange(volume - 0.05);
          break;
        case 'KeyM':
          e.preventDefault();
          toggleMute();
          break;
        case 'KeyF':
          e.preventDefault();
          toggleFullscreen();
          break;
        case 'KeyS':
          e.preventDefault();
          setShowSubtitleMenu(prev => !prev);
          break;
        case 'KeyA':
          e.preventDefault();
          setShowAudioMenu(prev => !prev);
          break;
        case 'KeyN':
          e.preventDefault();
          goToNextEpisode();
          break;
        case 'KeyP':
          e.preventDefault();
          goToPrevEpisode();
          break;
        case 'Slash':
        case 'KeyQ':
          if (e.shiftKey || e.code === 'KeyQ') {
            e.preventDefault();
            setShowHelpModal(prev => !prev);
          }
          break;
        case 'Escape':
          e.preventDefault();
          if (showSettingsMenu || showSpeedMenu || showQualityMenu || showAudioMenu || showSubtitleMenu || showEpisodeDrawer || showHelpModal) {
            setShowSettingsMenu(false);
            setShowSpeedMenu(false);
            setShowQualityMenu(false);
            setShowAudioMenu(false);
            setShowSubtitleMenu(false);
            setShowEpisodeDrawer(false);
            setShowHelpModal(false);
          } else {
            onClose();
          }
          break;
        default:
          break;
      }
    };

    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [isPlaying, volume, duration, isLocked, hasNextEpisode, hasPrevEpisode]);

  const formatTime = (secs) => {
    if (isNaN(secs) || secs < 0) return '00:00';
    const h = Math.floor(secs / 3600);
    const m = Math.floor((secs % 3600) / 60);
    const s = Math.floor(secs % 60);
    if (h > 0) {
      return `${h}:${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`;
    }
    return `${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`;
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black/95 backdrop-blur-xl p-0 sm:p-3 animate-in fade-in duration-200">
      
      {/* Player Frame Container */}
      <div 
        ref={containerRef}
        onMouseMove={resetControlsTimeout}
        className="relative w-full h-full max-w-6xl aspect-video bg-black rounded-none sm:rounded-3xl overflow-hidden shadow-2xl border border-surfaceHover/80 group flex flex-col justify-between select-none"
      >
        
        {/* TOP BAR OVERLAY */}
        <div className={`absolute top-0 inset-x-0 p-3 sm:p-5 z-30 flex items-center justify-between bg-gradient-to-b from-black/90 via-black/40 to-transparent transition-opacity duration-300 ${controlsVisible && !isLocked ? 'opacity-100' : 'opacity-0 pointer-events-none'}`}>
          <div className="flex items-center gap-3 min-w-0">
            <h3 className="text-white font-bold text-sm sm:text-base drop-shadow truncate max-w-sm sm:max-w-md flex items-center gap-2">
              {isSeries ? <Tv className="w-4 h-4 text-accent shrink-0" /> : <Film className="w-4 h-4 text-accent shrink-0" />}
              {item.title} {isSeries && <span className="text-accent ml-1 font-extrabold">S{currentSeNumber}:E{currentEpNumber}</span>}
            </h3>
            {selectedSource && (
              <button
                onClick={() => setShowQualityMenu(true)}
                title="Change Stream Quality / Resolution"
                className="hidden sm:inline-flex items-center gap-1.5 px-3 py-1 rounded-full text-xs font-black bg-accent hover:bg-accentHover text-white shadow-lg shadow-accent/25 hover:scale-105 transition-all cursor-pointer"
              >
                <Film className="w-3.5 h-3.5" />
                <span>{currentQualityBadge}</span>
              </button>
            )}
          </div>

          <div className="flex items-center gap-2">
            {/* Keyboard Shortcuts Button */}
            <button
              onClick={() => setShowHelpModal(true)}
              title="Keyboard Shortcuts (?)"
              className="p-2 rounded-xl bg-surface/80 hover:bg-surface text-gray-300 hover:text-white transition-all backdrop-blur-md"
            >
              <HelpCircle className="w-4 h-4" />
            </button>

            {/* Lock Controls Button */}
            <button
              onClick={() => setIsLocked(prev => !prev)}
              title={isLocked ? "Unlock Controls" : "Lock Controls"}
              className="p-2 rounded-xl bg-surface/80 hover:bg-surface text-gray-300 hover:text-white transition-all backdrop-blur-md"
            >
              {isLocked ? <Lock className="w-4 h-4 text-accent" /> : <Unlock className="w-4 h-4" />}
            </button>

            {/* Download Button */}
            <button
              onClick={handleDownload}
              title="Download Episode / Movie for offline watch"
              className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-surface/80 hover:bg-surface text-xs font-semibold text-white border border-surfaceHover backdrop-blur-md transition-all"
            >
              <Download className="w-3.5 h-3.5 text-accent" />
              <span className="hidden sm:inline">Download</span>
            </button>

            {/* Close */}
            <button
              onClick={onClose}
              title="Close Player (Esc)"
              className="p-2 rounded-xl bg-surface/80 hover:bg-red-500/80 text-white transition-all backdrop-blur-md"
            >
              <X className="w-4 h-4" />
            </button>
          </div>
        </div>

        {/* LOCKED CONTROLS FLOATING BADGE */}
        {isLocked && (
          <div className="absolute top-4 left-4 z-40 animate-in fade-in">
            <button
              onClick={() => setIsLocked(false)}
              className="flex items-center gap-2 px-3 py-1.5 rounded-full bg-accent text-white font-bold text-xs shadow-xl hover:scale-105 transition-all"
            >
              <Lock className="w-3.5 h-3.5" /> Controls Locked (Tap to Unlock)
            </button>
          </div>
        )}

        {/* LONG PRESS 2X SPEED INDICATOR */}
        {isLongPressing2x && (
          <div className="absolute top-16 left-1/2 -translate-x-1/2 z-30 px-4 py-1.5 rounded-full bg-accent text-white font-black text-xs shadow-2xl flex items-center gap-2 animate-bounce">
            <Gauge className="w-3.5 h-3.5" /> 2X Fast Forward Active
          </div>
        )}

        {/* DOUBLE TAP SEEK FEEDBACK BADGE */}
        {seekFeedback && (
          <div className={`absolute top-1/2 -translate-y-1/2 z-30 p-5 rounded-full bg-black/80 backdrop-blur-md text-white font-extrabold text-sm flex items-center gap-2 shadow-2xl animate-in zoom-in-75 duration-150 ${seekFeedback.type === 'rewind' ? 'left-12' : 'right-12'}`}>
            {seekFeedback.type === 'rewind' ? (
              <><RotateCcw className="w-6 h-6 text-accent" /> -{seekFeedback.seconds}s</>
            ) : (
              <><RotateCw className="w-6 h-6 text-accent" /> +{seekFeedback.seconds}s</>
            )}
          </div>
        )}

        {/* MAIN VIDEO CANVAS */}
        <div 
          className="relative w-full h-full flex items-center justify-center cursor-pointer bg-black"
          onClick={() => {
            if (!isLocked) {
              setControlsVisible(prev => !prev);
            }
          }}
          onTouchStart={handleTouchStart}
          onTouchEnd={handleTouchEnd}
          onTouchCancel={handleTouchEnd}
        >
          {/* Buffer Spinner */}
          {isLoading && (
            <div className="absolute inset-0 flex flex-col items-center justify-center bg-black/85 z-10 gap-3">
              <Loader2 className="w-12 h-12 text-accent animate-spin" />
              <p className="text-sm font-semibold text-gray-300">
                {isSeries ? `Buffering S${currentSeNumber}:E${currentEpNumber} in memory...` : 'Buffering movie stream in memory...'}
              </p>
            </div>
          )}

          {/* Floating Toast Notification */}
          {toastMessage && (
            <div className="absolute top-16 left-1/2 -translate-x-1/2 z-40 bg-surface/95 backdrop-blur-md border border-accent/70 px-4 py-2 rounded-2xl text-xs font-bold text-white shadow-2xl animate-in fade-in slide-in-from-top-2 flex items-center gap-2 pointer-events-none">
              <span className="w-2 h-2 rounded-full bg-accent animate-ping" />
              <span>{toastMessage}</span>
            </div>
          )}

          {/* Error Message Screen */}
          {errorMsg && (
            <div className="absolute inset-0 flex flex-col items-center justify-center bg-black/90 z-10 p-6 text-center gap-3">
              <AlertCircle className="w-12 h-12 text-red-500 animate-pulse" />
              <p className="text-sm text-red-400 font-semibold max-w-md">{errorMsg}</p>
              <button
                onClick={() => {
                  setErrorMsg(null);
                  setIsLoading(true);
                  if (selectedSource) setSelectedSource({ ...selectedSource });
                }}
                className="px-5 py-2.5 rounded-xl bg-accent text-white font-bold text-xs shadow-lg hover:scale-105 transition-all flex items-center gap-2"
              >
                <RotateCcw className="w-4 h-4" /> Retry Stream
              </button>
            </div>
          )}

          {/* Autoplay Next Episode Countdown Overlay */}
          {autoNextCountdown !== null && (
            <div className="absolute bottom-20 left-1/2 -translate-x-1/2 z-30 bg-surface/95 border border-accent rounded-2xl p-4 shadow-2xl flex items-center gap-4 animate-in slide-in-from-bottom-2">
              <div className="text-left">
                <p className="text-xs text-gray-400">Up Next in {autoNextCountdown}s</p>
                <p className="text-sm font-bold text-white">Episode {currentEpNumber + 1}</p>
              </div>
              <button
                onClick={goToNextEpisode}
                className="px-4 py-2 rounded-xl bg-accent hover:bg-accentHover text-white text-xs font-bold flex items-center gap-1.5"
              >
                Play Now <ArrowRight className="w-3.5 h-3.5" />
              </button>
              <button
                onClick={() => setAutoNextCountdown(null)}
                className="p-2 text-gray-400 hover:text-white"
              >
                <X className="w-4 h-4" />
              </button>
            </div>
          )}

          {/* Video element */}
          <video
            ref={videoRef}
            className="w-full h-full object-contain relative z-0"
            style={{
              imageRendering: '-webkit-optimize-contrast',
              transform: 'translateZ(0)',
              willChange: 'transform',
              backfaceVisibility: 'hidden',
              filter: 'contrast(102%) saturate(102%)'
            }}
            preload="auto"
            autoPlay
            playsInline
            crossOrigin="anonymous"
          >
            {/* Active Subtitle Track */}
            {selectedSubtitle !== 'off' && subtitles.find(s => s.label === selectedSubtitle)?.url && (
              <track
                key={selectedSubtitle}
                default
                kind="subtitles"
                label={selectedSubtitle}
                src={subtitles.find(s => s.label === selectedSubtitle)?.url}
              />
            )}
          </video>
        </div>

        {/* BOTTOM CONTROLS OVERLAY */}
        <div className={`absolute bottom-0 inset-x-0 p-3 sm:p-5 z-30 bg-gradient-to-t from-black/95 via-black/60 to-transparent flex flex-col gap-2.5 transition-opacity duration-300 ${controlsVisible && !isLocked ? 'opacity-100' : 'opacity-0 pointer-events-none'}`}>
          
          {/* Progress / Seek Bar */}
          <div 
            onClick={handleSeek}
            className="relative w-full h-2 hover:h-3 bg-gray-700/60 rounded-full cursor-pointer transition-all flex items-center group/bar"
          >
            <div 
              className="h-full bg-accent rounded-full transition-all relative"
              style={{ width: `${progress}%` }}
            >
              <div className="absolute right-0 top-1/2 -translate-y-1/2 w-3.5 h-3.5 bg-white rounded-full shadow-lg opacity-0 group-hover/bar:opacity-100 transition-opacity" />
            </div>
          </div>

          {/* Control Buttons Bar */}
          <div className="flex items-center justify-between">
            
            {/* Left Controls */}
            <div className="flex items-center gap-2 sm:gap-4">
              
              {/* Play / Pause */}
              <button
                onClick={togglePlay}
                title="Play / Pause (Space)"
                className="p-2 sm:p-2.5 rounded-full bg-accent hover:bg-accentHover text-white shadow-lg transition-transform hover:scale-105"
              >
                {isPlaying ? <Pause className="w-5 h-5 fill-current" /> : <Play className="w-5 h-5 fill-current ml-0.5" />}
              </button>

              {/* Seek Backward 10s */}
              <button
                onClick={() => stepSeek(-10)}
                title="Rewind 10s (Left Arrow)"
                className="p-2 text-gray-300 hover:text-white transition-colors"
              >
                <RotateCcw className="w-4 h-4" />
              </button>

              {/* Seek Forward 10s */}
              <button
                onClick={() => stepSeek(10)}
                title="Forward 10s (Right Arrow)"
                className="p-2 text-gray-300 hover:text-white transition-colors"
              >
                <RotateCw className="w-4 h-4" />
              </button>

              {/* Previous Episode (for series) */}
              {isSeries && (
                <button
                  onClick={goToPrevEpisode}
                  disabled={!hasPrevEpisode}
                  title="Previous Episode (P)"
                  className="p-2 text-gray-300 hover:text-white disabled:opacity-30 disabled:cursor-not-allowed transition-colors"
                >
                  <SkipBack className="w-4 h-4" />
                </button>
              )}

              {/* Next Episode (for series) */}
              {isSeries && (
                <button
                  onClick={goToNextEpisode}
                  disabled={!hasNextEpisode}
                  title="Next Episode (N)"
                  className="p-2 text-gray-300 hover:text-white disabled:opacity-30 disabled:cursor-not-allowed transition-colors"
                >
                  <SkipForward className="w-4 h-4" />
                </button>
              )}

              {/* Volume Slider & Mute */}
              <div className="flex items-center gap-2 group/vol">
                <button
                  onClick={toggleMute}
                  title="Mute / Unmute (M)"
                  className="p-2 text-gray-300 hover:text-white transition-colors"
                >
                  {isMuted || volume === 0 ? <VolumeX className="w-4 h-4 text-red-400" /> : <Volume2 className="w-4 h-4" />}
                </button>
                <input
                  type="range"
                  min="0"
                  max="1"
                  step="0.05"
                  value={isMuted ? 0 : volume}
                  onChange={(e) => handleVolumeChange(parseFloat(e.target.value))}
                  className="w-16 sm:w-20 h-1 bg-gray-600 rounded-lg appearance-none cursor-pointer accent-accent"
                />
              </div>

              {/* Time Display */}
              <span className="text-xs font-semibold text-gray-300 tracking-wider">
                {formatTime(currentTime)} / {formatTime(duration)}
              </span>
            </div>

            {/* Right Controls */}
            <div className="flex items-center gap-1 sm:gap-2 relative">
              
              {/* Episodes Drawer Toggle (Series Only) */}
              {isSeries && (
                <button
                  onClick={() => setShowEpisodeDrawer(prev => !prev)}
                  title="Episodes & Seasons"
                  className={`p-2 rounded-xl transition-all ${showEpisodeDrawer ? 'bg-accent text-white' : 'text-gray-300 hover:text-white hover:bg-surface/60'}`}
                >
                  <ListVideo className="w-4 h-4" />
                </button>
              )}

              {/* Audio Tracks Menu Toggle */}
              {audioTracks.length > 0 && (
                <div className="relative">
                  <button
                    onClick={() => {
                      setShowAudioMenu(prev => !prev);
                      setShowSettingsMenu(false);
                      setShowSubtitleMenu(false);
                    }}
                    title="Audio Language (A)"
                    className={`p-2 rounded-xl transition-all ${showAudioMenu ? 'bg-accent text-white' : 'text-gray-300 hover:text-white hover:bg-surface/60'}`}
                  >
                    <Languages className="w-4 h-4" />
                  </button>

                  {showAudioMenu && (
                    <div className="absolute bottom-12 right-0 w-48 bg-surface/95 backdrop-blur-xl border border-surfaceHover rounded-2xl p-2 shadow-2xl z-40 animate-in fade-in slide-in-from-bottom-2">
                      <p className="text-[11px] font-bold text-gray-400 px-3 py-1 uppercase tracking-wider">Audio Tracks</p>
                      {audioTracks.map(track => (
                        <button
                          key={track.index}
                          onClick={() => changeAudioTrack(track.index)}
                          className={`w-full flex items-center justify-between px-3 py-2 rounded-xl text-xs font-semibold transition-all ${selectedAudioTrack === track.index ? 'bg-accent/20 text-accent font-bold' : 'text-gray-200 hover:bg-surface'}`}
                        >
                          <span>{track.label}</span>
                          {selectedAudioTrack === track.index && <Check className="w-3.5 h-3.5" />}
                        </button>
                      ))}
                    </div>
                  )}
                </div>
              )}

              {/* Subtitles Menu Toggle */}
              <div className="relative">
                <button
                  onClick={() => {
                    setShowSubtitleMenu(prev => !prev);
                    setShowSettingsMenu(false);
                    setShowAudioMenu(false);
                  }}
                  title="Subtitles (S)"
                  className={`p-2 rounded-xl transition-all ${showSubtitleMenu || selectedSubtitle !== 'off' ? 'bg-accent text-white' : 'text-gray-300 hover:text-white hover:bg-surface/60'}`}
                >
                  <Subtitles className="w-4 h-4" />
                </button>

                {showSubtitleMenu && (
                  <div className="absolute bottom-12 right-0 w-56 bg-surface/95 backdrop-blur-xl border border-surfaceHover rounded-2xl p-2 shadow-2xl z-40 animate-in fade-in slide-in-from-bottom-2">
                    <p className="text-[11px] font-bold text-gray-400 px-3 py-1 uppercase tracking-wider">Subtitles</p>
                    <button
                      onClick={() => changeSubtitle('off')}
                      className={`w-full flex items-center justify-between px-3 py-2 rounded-xl text-xs font-semibold transition-all ${selectedSubtitle === 'off' ? 'bg-accent/20 text-accent font-bold' : 'text-gray-200 hover:bg-surface'}`}
                    >
                      <span>Off</span>
                      {selectedSubtitle === 'off' && <Check className="w-3.5 h-3.5" />}
                    </button>
                    {subtitles.map((sub, idx) => (
                      <button
                        key={idx}
                        onClick={() => changeSubtitle(sub)}
                        className={`w-full flex items-center justify-between px-3 py-2 rounded-xl text-xs font-semibold transition-all ${selectedSubtitle === sub.label ? 'bg-accent/20 text-accent font-bold' : 'text-gray-200 hover:bg-surface'}`}
                      >
                        <span className="truncate">{sub.label}</span>
                        {selectedSubtitle === sub.label && <Check className="w-3.5 h-3.5 shrink-0" />}
                      </button>
                    ))}

                    <div className="pt-2 mt-2 border-t border-surfaceHover">
                      <button
                        onClick={() => fileInputRef.current?.click()}
                        className="w-full flex items-center gap-2 px-3 py-2 rounded-xl text-xs font-bold text-accent hover:bg-accent/10 transition-all"
                      >
                        <FileText className="w-3.5 h-3.5" /> Load .SRT / .VTT File
                      </button>
                      <input
                        ref={fileInputRef}
                        type="file"
                        accept=".srt,.vtt"
                        onChange={handleLoadExternalSubtitle}
                        className="hidden"
                      />
                    </div>
                  </div>
                )}
              </div>

              {/* Dedicated Quality Selector Toggle (4K / 1080p / 720p / 480p / Auto) */}
              <div className="relative">
                <button
                  onClick={() => {
                    setShowQualityMenu(prev => !prev);
                    setShowSettingsMenu(false);
                    setShowAudioMenu(false);
                    setShowSubtitleMenu(false);
                  }}
                  title="Video Quality"
                  className={`flex items-center gap-1.5 px-2.5 py-1.5 rounded-xl transition-all text-xs font-bold ${
                    showQualityMenu ? 'bg-accent text-white shadow-lg shadow-accent/30' : 'text-gray-300 hover:text-white hover:bg-surface/60'
                  }`}
                >
                  <Film className="w-4 h-4 text-accent" />
                  <span className="text-[11px] font-extrabold tracking-wide uppercase">
                    {currentQualityBadge}
                  </span>
                </button>

                {showQualityMenu && (
                  <div className="absolute bottom-14 right-0 w-[94vw] sm:w-[600px] max-w-2xl bg-surface/98 backdrop-blur-2xl border border-surfaceHover rounded-3xl p-4 shadow-2xl z-40 animate-in fade-in slide-in-from-bottom-3 select-none">
                    
                    {/* Header */}
                    <div className="flex items-center justify-between pb-3 border-b border-surfaceHover mb-3">
                      <div className="flex items-center gap-2">
                        <Film className="w-4 h-4 text-accent" />
                        <span className="text-xs font-black text-white uppercase tracking-wider">
                          Streams ({sources.length > 0 ? sources.length : availableQualities.length})
                        </span>
                        <span className="px-2 py-0.5 rounded-full text-[10px] font-bold bg-accent/20 text-accent">
                          Active: {currentQualityBadge}
                        </span>
                      </div>
                      <button
                        onClick={() => setShowQualityMenu(false)}
                        className="p-1 rounded-lg text-gray-400 hover:text-white hover:bg-surface transition-all"
                      >
                        <X className="w-4 h-4" />
                      </button>
                    </div>

                    {/* Audio tracks / dubs if present */}
                    {audioTracks.length > 0 && (
                      <div className="mb-3 pb-3 border-b border-surfaceHover">
                        <p className="text-[10px] font-extrabold text-gray-400 uppercase tracking-wider mb-1.5 flex items-center gap-1.5">
                          <Languages className="w-3 h-3 text-accent" /> Audio ({audioTracks.length})
                        </p>
                        <div className="flex flex-wrap gap-1.5 max-h-24 overflow-y-auto no-scrollbar">
                          {audioTracks.map((t, idx) => {
                            const isAudActive = selectedAudioTrack === t.index;
                            return (
                              <button
                                key={idx}
                                onClick={() => changeAudioTrack(t.index)}
                                className={`px-2.5 py-1 rounded-xl text-[11px] font-bold transition-all ${
                                  isAudActive 
                                    ? 'bg-accent text-white shadow' 
                                    : 'bg-surface hover:bg-surfaceHover text-gray-300'
                                }`}
                              >
                                {t.label}
                              </button>
                            );
                          })}
                        </div>
                      </div>
                    )}

                    {/* Streams Table Header (Matching PowerShell TUI: RES | SIZE | MEDIA TAGS | SOURCE | RELEASE) */}
                    <div className="grid grid-cols-12 gap-2 text-[10px] font-black uppercase tracking-wider text-gray-400 px-3 py-1.5 bg-background/50 rounded-xl mb-1.5">
                      <span className="col-span-2">RES</span>
                      <span className="col-span-2">SIZE</span>
                      <span className="col-span-2">MEDIA TAGS</span>
                      <span className="col-span-3">SOURCE</span>
                      <span className="col-span-3">RELEASE</span>
                    </div>

                    {/* Streams Table Rows */}
                    <div className="max-h-56 overflow-y-auto space-y-1 py-0.5 no-scrollbar">
                      {sources.length > 0 ? (
                        sources.map((src, idx) => {
                          const isSelected = (selectedSource?.id && src.id && selectedSource.id === src.id) ||
                                             (selectedSource?.resolution === src.resolution && selectedSource?.url === src.url);
                          return (
                            <button
                              key={src.id || idx}
                              onClick={() => selectStreamSource(src)}
                              className={`w-full grid grid-cols-12 gap-2 items-center px-3 py-2 rounded-xl text-left text-xs transition-all ${
                                isSelected
                                  ? 'bg-accent/20 border border-accent/40 text-white font-bold shadow-md'
                                  : 'text-gray-300 hover:bg-surfaceHover/80 hover:text-white border border-transparent'
                              }`}
                            >
                              <div className="col-span-2 flex items-center gap-1.5">
                                <span className={`px-1.5 py-0.5 rounded text-[10px] font-black uppercase ${
                                  src.resolution >= 2160 ? 'bg-yellow-500/20 text-yellow-400' :
                                  src.resolution >= 1080 ? 'bg-accent/20 text-accent' :
                                  src.resolution >= 720 ? 'bg-blue-500/20 text-blue-400' :
                                  'bg-surfaceHover text-gray-300'
                                }`}>
                                  {src.badge || `${src.resolution}p`}
                                </span>
                              </div>
                              <span className="col-span-2 text-[11px] font-semibold text-gray-300 truncate">
                                {src.size || 'HD'}
                              </span>
                              <span className="col-span-2 text-[11px] font-semibold text-accent/90 truncate">
                                {src.codec || 'HEVC'}
                              </span>
                              <span className="col-span-3 text-[11px] text-gray-400 truncate">
                                {src.source || 'MovieBox CDN'}
                              </span>
                              <div className="col-span-3 flex items-center justify-between min-w-0">
                                <span className="text-[11px] text-gray-300 truncate pr-1">
                                  {src.release || item.title}
                                </span>
                                {isSelected && <Check className="w-3.5 h-3.5 text-accent shrink-0" />}
                              </div>
                            </button>
                          );
                        })
                      ) : (
                        availableQualities.map(qOpt => {
                          const isSelected = activeQualityOption.height === qOpt.height;
                          return (
                            <button
                              key={qOpt.id}
                              onClick={() => changeQualityOption(qOpt)}
                              className={`w-full grid grid-cols-12 gap-2 items-center px-3 py-2 rounded-xl text-left text-xs transition-all ${
                                isSelected
                                  ? 'bg-accent/20 border border-accent/40 text-white font-bold'
                                  : 'text-gray-300 hover:bg-surfaceHover/80 hover:text-white'
                              }`}
                            >
                              <span className="col-span-3 font-bold text-accent">{qOpt.badge}</span>
                              <span className="col-span-4 text-[11px] text-gray-300">{qOpt.label}</span>
                              <span className="col-span-4 text-[11px] text-gray-400">MovieBox CDN</span>
                              <div className="col-span-1 text-right">
                                {isSelected && <Check className="w-3.5 h-3.5 text-accent inline" />}
                              </div>
                            </button>
                          );
                        })
                      )}
                    </div>

                    {/* Subtitles shortcut row matching Image 1 */}
                    {subtitles.length > 0 && (
                      <div className="mt-2.5 pt-2.5 border-t border-surfaceHover flex items-center justify-between text-xs">
                        <span className="text-gray-400 flex items-center gap-1.5 text-[11px] font-bold">
                          <Subtitles className="w-3.5 h-3.5 text-accent" /> Subtitles:
                        </span>
                        <div className="flex items-center gap-1">
                          <button
                            onClick={() => changeSubtitle('off')}
                            className={`px-2 py-0.5 rounded-lg text-[10px] font-bold ${
                              selectedSubtitle === 'off' ? 'bg-accent text-white' : 'text-gray-400 hover:text-white'
                            }`}
                          >
                            No subtitles
                          </button>
                          {subtitles.slice(0, 3).map((sub, idx) => (
                            <button
                              key={idx}
                              onClick={() => changeSubtitle(sub)}
                              className={`px-2 py-0.5 rounded-lg text-[10px] font-bold ${
                                selectedSubtitle === sub.label ? 'bg-accent text-white' : 'text-gray-400 hover:text-white'
                              }`}
                            >
                              {sub.label}
                            </button>
                          ))}
                        </div>
                      </div>
                    )}

                  </div>
                )}
              </div>

              {/* Settings Menu Toggle (Speed & Quality) */}
              <div className="relative">
                <button
                  onClick={() => {
                    setShowSettingsMenu(prev => !prev);
                    setShowAudioMenu(false);
                    setShowSubtitleMenu(false);
                    setShowQualityMenu(false);
                  }}
                  title="Playback Settings"
                  className={`p-2 rounded-xl transition-all ${showSettingsMenu ? 'bg-accent text-white' : 'text-gray-300 hover:text-white hover:bg-surface/60'}`}
                >
                  <Settings className="w-4 h-4" />
                </button>

                {showSettingsMenu && (
                  <div className="absolute bottom-12 right-0 w-56 bg-surface/95 backdrop-blur-xl border border-surfaceHover rounded-2xl p-2 shadow-2xl z-40 animate-in fade-in slide-in-from-bottom-2">
                    <p className="text-[11px] font-bold text-gray-400 px-3 py-1 uppercase tracking-wider">Settings</p>
                    
                    {/* Quality submenu button */}
                    <button
                      onClick={() => setShowQualityMenu(prev => !prev)}
                      className="w-full flex items-center justify-between px-3 py-2 rounded-xl text-xs font-semibold text-gray-200 hover:bg-surface transition-all"
                    >
                      <span className="flex items-center gap-2"><Film className="w-3.5 h-3.5 text-accent" /> Quality</span>
                      <span className="text-[11px] text-accent font-bold uppercase">
                        {currentQualityBadge}
                      </span>
                    </button>

                    {/* Speed submenu button */}
                    <button
                      onClick={() => setShowSpeedMenu(prev => !prev)}
                      className="w-full flex items-center justify-between px-3 py-2 rounded-xl text-xs font-semibold text-gray-200 hover:bg-surface transition-all"
                    >
                      <span className="flex items-center gap-2"><Gauge className="w-3.5 h-3.5 text-accent" /> Speed</span>
                      <span className="text-[11px] text-gray-400">{playbackSpeed}x</span>
                    </button>

                    {showSpeedMenu && (
                      <div className="pl-4 pr-1 py-1 grid grid-cols-3 gap-1 border-l-2 border-accent/40 ml-3 my-1">
                        {[0.5, 0.75, 1, 1.25, 1.5, 2].map(spd => (
                          <button
                            key={spd}
                            onClick={() => changeSpeed(spd)}
                            className={`px-2 py-1 rounded-lg text-xs font-semibold text-center transition-all ${playbackSpeed === spd ? 'bg-accent text-white font-bold' : 'text-gray-300 hover:bg-surface'}`}
                          >
                            {spd}x
                          </button>
                        ))}
                      </div>
                    )}
                  </div>
                )}
              </div>

              {/* Picture-in-Picture Button */}
              <button
                onClick={togglePictureInPicture}
                title="Picture in Picture"
                className="hidden sm:inline-block p-2 text-gray-300 hover:text-white hover:bg-surface/60 rounded-xl transition-all"
              >
                <PictureInPicture className="w-4 h-4" />
              </button>

              {/* Fullscreen Button */}
              <button
                onClick={toggleFullscreen}
                title="Fullscreen (F)"
                className="p-2 text-gray-300 hover:text-white hover:bg-surface/60 rounded-xl transition-all"
              >
                {isFullscreen ? <Minimize className="w-4 h-4" /> : <Maximize className="w-4 h-4" />}
              </button>
            </div>
          </div>
        </div>

        {/* EPISODE QUICK SWITCHER DRAWER */}
        {showEpisodeDrawer && isSeries && (
          <div className="absolute right-0 inset-y-0 w-80 bg-surface/95 backdrop-blur-2xl border-l border-surfaceHover z-40 p-4 flex flex-col shadow-2xl animate-in slide-in-from-right duration-200">
            <div className="flex items-center justify-between pb-3 border-b border-surfaceHover">
              <h4 className="text-sm font-bold text-white flex items-center gap-2">
                <ListVideo className="w-4 h-4 text-accent" /> Episodes & Seasons
              </h4>
              <button onClick={() => setShowEpisodeDrawer(false)} className="p-1 rounded-lg hover:bg-surfaceHover text-gray-400 hover:text-white">
                <X className="w-4 h-4" />
              </button>
            </div>

            {/* Season Selector Tabs */}
            {seasonsData.length > 1 && (
              <div className="flex gap-1.5 py-3 overflow-x-auto no-scrollbar">
                {seasonsData.map(s => {
                  const sNum = s.season || s.number;
                  const isActive = drawerSeason === sNum;
                  return (
                    <button
                      key={sNum}
                      onClick={() => setDrawerSeason(sNum)}
                      className={`px-3 py-1.5 rounded-xl text-xs font-bold whitespace-nowrap transition-all ${isActive ? 'bg-accent text-white shadow-md' : 'bg-surface text-gray-400 hover:text-white'}`}
                    >
                      Season {sNum}
                    </button>
                  );
                })}
              </div>
            )}

            {/* Episode Grid */}
            <div className="flex-1 overflow-y-auto space-y-2 py-3 pr-1">
              {Array.from({ length: totalEpisodesInSeason }, (_, i) => i + 1).map(epNum => {
                const isCurrent = currentSeNumber === drawerSeason && currentEpNumber === epNum;
                return (
                  <button
                    key={epNum}
                    onClick={() => {
                      if (onNavigateEpisode) onNavigateEpisode(drawerSeason, epNum);
                      setShowEpisodeDrawer(false);
                    }}
                    className={`w-full flex items-center justify-between p-3 rounded-2xl text-left transition-all ${isCurrent ? 'bg-accent/20 border border-accent text-white font-bold' : 'bg-surface hover:bg-surfaceHover text-gray-300'}`}
                  >
                    <div className="flex items-center gap-3">
                      <div className={`w-8 h-8 rounded-xl flex items-center justify-center text-xs font-bold ${isCurrent ? 'bg-accent text-white' : 'bg-surfaceHover text-gray-400'}`}>
                        {epNum}
                      </div>
                      <div>
                        <p className="text-xs font-bold text-white">Episode {epNum}</p>
                        <p className="text-[10px] text-gray-400">Season {drawerSeason}</p>
                      </div>
                    </div>
                    {isCurrent && <Play className="w-3.5 h-3.5 text-accent fill-current" />}
                  </button>
                );
              })}
            </div>
          </div>
        )}

        {/* KEYBOARD SHORTCUTS HELP MODAL */}
        {showHelpModal && (
          <div className="absolute inset-0 z-50 bg-black/90 backdrop-blur-md flex items-center justify-center p-4 animate-in fade-in duration-150">
            <div className="bg-surface border border-surfaceHover rounded-3xl p-6 max-w-md w-full shadow-2xl flex flex-col gap-4">
              <div className="flex items-center justify-between pb-3 border-b border-surfaceHover">
                <h4 className="text-sm font-bold text-white flex items-center gap-2">
                  <HelpCircle className="w-4 h-4 text-accent" /> Keyboard Shortcuts
                </h4>
                <button onClick={() => setShowHelpModal(false)} className="p-1 rounded-lg hover:bg-surfaceHover text-gray-400 hover:text-white">
                  <X className="w-4 h-4" />
                </button>
              </div>

              <div className="grid grid-cols-2 gap-3 text-xs">
                <div className="space-y-2">
                  <div className="flex justify-between text-gray-300"><kbd className="px-2 py-0.5 rounded bg-surfaceHover font-mono text-white">Space / K</kbd> <span>Play / Pause</span></div>
                  <div className="flex justify-between text-gray-300"><kbd className="px-2 py-0.5 rounded bg-surfaceHover font-mono text-white">Left Arrow</kbd> <span>Seek -5s</span></div>
                  <div className="flex justify-between text-gray-300"><kbd className="px-2 py-0.5 rounded bg-surfaceHover font-mono text-white">Right Arrow</kbd> <span>Seek +5s</span></div>
                  <div className="flex justify-between text-gray-300"><kbd className="px-2 py-0.5 rounded bg-surfaceHover font-mono text-white">J / L</kbd> <span>Seek ±10s</span></div>
                  <div className="flex justify-between text-gray-300"><kbd className="px-2 py-0.5 rounded bg-surfaceHover font-mono text-white">Up / Down</kbd> <span>Volume ±5%</span></div>
                </div>
                <div className="space-y-2">
                  <div className="flex justify-between text-gray-300"><kbd className="px-2 py-0.5 rounded bg-surfaceHover font-mono text-white">M</kbd> <span>Mute</span></div>
                  <div className="flex justify-between text-gray-300"><kbd className="px-2 py-0.5 rounded bg-surfaceHover font-mono text-white">F</kbd> <span>Fullscreen</span></div>
                  <div className="flex justify-between text-gray-300"><kbd className="px-2 py-0.5 rounded bg-surfaceHover font-mono text-white">S</kbd> <span>Subtitles</span></div>
                  <div className="flex justify-between text-gray-300"><kbd className="px-2 py-0.5 rounded bg-surfaceHover font-mono text-white">A</kbd> <span>Audio Track</span></div>
                  <div className="flex justify-between text-gray-300"><kbd className="px-2 py-0.5 rounded bg-surfaceHover font-mono text-white">N / P</kbd> <span>Next / Prev Ep</span></div>
                </div>
              </div>

              <button
                onClick={() => setShowHelpModal(false)}
                className="w-full py-2.5 rounded-xl bg-accent text-white font-bold text-xs shadow-lg hover:scale-[1.02] transition-all"
              >
                Close
              </button>
            </div>
          </div>
        )}

      </div>
    </div>
  );
}
