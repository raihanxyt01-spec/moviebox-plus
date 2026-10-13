import React, { useState, useEffect } from 'react';
import { 
  Download, Pause, Play, Trash2, FolderOpen, Film, Tv, 
  CheckCircle2, Clock, AlertCircle, ArrowDownCircle, RefreshCw, HardDrive
} from 'lucide-react';

export default function DownloadsTab({ onPlayLocalFile }) {
  const [activeTab, setActiveTab] = useState('active'); // 'active' or 'completed'
  const [activeDownloads, setActiveDownloads] = useState([]);
  const [completedDownloads, setCompletedDownloads] = useState([]);
  const [isLoading, setIsLoading] = useState(true);

  // Format bytes helper
  const formatBytes = (bytes) => {
    if (!bytes || bytes === 0) return '0 B';
    const k = 1024;
    const sizes = ['B', 'KB', 'MB', 'GB', 'TB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    return parseFloat((bytes / Math.pow(k, i)).toFixed(1)) + ' ' + sizes[i];
  };

  const loadDownloads = async () => {
    if (window.electronAPI && window.electronAPI.getDownloads) {
      try {
        const res = await window.electronAPI.getDownloads();
        setCompletedDownloads(res.completed || []);
        setActiveDownloads(res.active || []);
      } catch (err) {
        console.error('Failed to get downloads:', err);
      }
    } else {
      // Fallback for browser mode
      try {
        const stored = JSON.parse(localStorage.getItem('mb_completed_downloads') || '[]');
        setCompletedDownloads(stored);
      } catch (e) {}
    }
    setIsLoading(false);
  };

  useEffect(() => {
    loadDownloads();

    // Regular poll to refresh live progress and speeds
    const pollInterval = setInterval(() => {
      if (window.electronAPI && window.electronAPI.getDownloads) {
        window.electronAPI.getDownloads().then(res => {
          if (res) {
            if (res.active) setActiveDownloads(res.active);
            if (res.completed) setCompletedDownloads(res.completed);
          }
        }).catch(() => {});
      }
    }, 1500);

    // Listen for live download events from Electron
    if (window.electronAPI && window.electronAPI.onDownloadUpdate) {
      const unsubscribe = window.electronAPI.onDownloadUpdate((data) => {
        if (!data || !data.id) return;

        if (data.state === 'completed') {
          // Remove from active
          setActiveDownloads(prev => prev.filter(d => d.id !== data.id));
          // Refresh completed list
          loadDownloads();
        } else if (data.state === 'cancelled') {
          setActiveDownloads(prev => prev.filter(d => d.id !== data.id));
        } else {
          // Update or add in active downloads list
          setActiveDownloads(prev => {
            const idx = prev.findIndex(d => d.id === data.id);
            if (idx >= 0) {
              const updated = [...prev];
              updated[idx] = { ...updated[idx], ...data };
              return updated;
            } else {
              return [data, ...prev];
            }
          });
        }
      });

      return () => {
        clearInterval(pollInterval);
        if (unsubscribe) unsubscribe();
      };
    }

    return () => clearInterval(pollInterval);
  }, []);

  const handlePause = async (id) => {
    if (window.electronAPI && window.electronAPI.pauseDownload) {
      await window.electronAPI.pauseDownload(id);
      setActiveDownloads(prev => prev.map(d => d.id === id ? { ...d, state: 'paused' } : d));
    }
  };

  const handleResume = async (id) => {
    if (window.electronAPI && window.electronAPI.resumeDownload) {
      await window.electronAPI.resumeDownload(id);
      setActiveDownloads(prev => prev.map(d => d.id === id ? { ...d, state: 'progressing' } : d));
    }
  };

  const handleCancel = async (id) => {
    if (window.electronAPI && window.electronAPI.cancelDownload) {
      await window.electronAPI.cancelDownload(id);
      setActiveDownloads(prev => prev.filter(d => d.id !== id));
    }
  };

  const handleDeleteCompleted = async (item) => {
    if (window.electronAPI && window.electronAPI.deleteDownload) {
      await window.electronAPI.deleteDownload(item.id, item.filePath);
      setCompletedDownloads(prev => prev.filter(d => d.id !== item.id));
    } else {
      setCompletedDownloads(prev => {
        const next = prev.filter(d => d.id !== item.id);
        localStorage.setItem('mb_completed_downloads', JSON.stringify(next));
        return next;
      });
    }
  };

  const handleOpenFolder = (filePath) => {
    if (window.electronAPI && window.electronAPI.openDownloadFolder) {
      window.electronAPI.openDownloadFolder(filePath);
    }
  };

  const handlePlayOffline = (item) => {
    if (onPlayLocalFile) {
      onPlayLocalFile({
        id: item.id || item.filename,
        title: item.title || item.filename,
        type: 'Movie',
        cover: item.cover,
        localPath: item.filePath,
        url: item.filePath ? `file://${item.filePath.replace(/\\/g, '/')}` : item.url
      });
    }
  };

  return (
    <div className="space-y-6 animate-in fade-in duration-200">
      
      {/* Header */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 pb-4 border-b border-surfaceHover">
        <div className="flex items-center gap-3">
          <div className="w-10 h-10 rounded-2xl bg-accent/20 border border-accent/40 flex items-center justify-center">
            <ArrowDownCircle className="w-5 h-5 text-accent" />
          </div>
          <div>
            <h2 className="text-xl sm:text-2xl font-black text-white tracking-tight">
              Download Manager
            </h2>
            <p className="text-xs text-gray-400">
              Manage in-progress downloads and watch downloaded movies & episodes offline
            </p>
          </div>
        </div>

        <div className="flex items-center gap-2">
          <button
            onClick={() => handleOpenFolder()}
            className="flex items-center gap-2 px-3.5 py-2 rounded-xl bg-surface hover:bg-surfaceHover text-gray-200 text-xs font-semibold border border-surfaceHover transition-all"
            title="Open Downloads Folder"
          >
            <FolderOpen className="w-4 h-4 text-accent" />
            <span>Open Folder</span>
          </button>
          
          <button
            onClick={loadDownloads}
            className="p-2 rounded-xl bg-surface hover:bg-surfaceHover text-gray-300 hover:text-white transition-all"
            title="Refresh List"
          >
            <RefreshCw className="w-4 h-4" />
          </button>
        </div>
      </div>

      {/* Tabs Switcher: Active vs Completed */}
      <div className="flex items-center gap-2 border-b border-surfaceHover pb-2">
        <button
          onClick={() => setActiveTab('active')}
          className={`flex items-center gap-2 px-4 py-2 rounded-xl text-xs font-bold transition-all ${
            activeTab === 'active'
              ? 'bg-accent text-white shadow-lg shadow-accent/20'
              : 'bg-surface hover:bg-surfaceHover text-gray-400 hover:text-white'
          }`}
        >
          <Clock className="w-3.5 h-3.5" />
          <span>Active Downloads</span>
          {activeDownloads.length > 0 && (
            <span className="px-1.5 py-0.2 bg-white/20 text-white text-[10px] rounded-full font-black">
              {activeDownloads.length}
            </span>
          )}
        </button>

        <button
          onClick={() => setActiveTab('completed')}
          className={`flex items-center gap-2 px-4 py-2 rounded-xl text-xs font-bold transition-all ${
            activeTab === 'completed'
              ? 'bg-accent text-white shadow-lg shadow-accent/20'
              : 'bg-surface hover:bg-surfaceHover text-gray-400 hover:text-white'
          }`}
        >
          <CheckCircle2 className="w-3.5 h-3.5" />
          <span>Completed Files</span>
          {completedDownloads.length > 0 && (
            <span className="px-1.5 py-0.2 bg-white/20 text-white text-[10px] rounded-full font-black">
              {completedDownloads.length}
            </span>
          )}
        </button>
      </div>

      {/* Content Area */}
      {activeTab === 'active' ? (
        activeDownloads.length > 0 ? (
          <div className="space-y-3">
            {activeDownloads.map((item) => {
              const percent = item.totalBytes > 0 
                ? Math.round((item.receivedBytes / item.totalBytes) * 100) 
                : 0;
              const isPaused = item.state === 'paused';

              return (
                <div 
                  key={item.id}
                  className="bg-surface border border-surfaceHover rounded-2xl p-4 flex flex-col sm:flex-row items-start sm:items-center justify-between gap-4 shadow-lg hover:border-surfaceHover/80 transition-all"
                >
                  {/* Left: Thumbnail & Info */}
                  <div className="flex items-center gap-4 min-w-0 flex-1">
                    <div className="w-14 h-20 rounded-xl bg-surfaceHover overflow-hidden flex-shrink-0 relative border border-white/5">
                      {item.cover ? (
                        <img src={item.cover} alt={item.title} className="w-full h-full object-cover" />
                      ) : (
                        <div className="w-full h-full flex items-center justify-center text-gray-500">
                          <Film className="w-6 h-6" />
                        </div>
                      )}
                    </div>

                    <div className="min-w-0 flex-1">
                      <div className="flex items-center gap-2">
                        <h4 className="text-sm font-bold text-white truncate max-w-md">
                          {item.title}
                        </h4>
                        <span className={`px-2 py-0.5 rounded text-[10px] font-bold uppercase tracking-wider ${
                          isPaused ? 'bg-yellow-500/20 text-yellow-400' : 'bg-green-500/20 text-green-400 animate-pulse'
                        }`}>
                          {item.state}
                        </span>
                      </div>
                      
                      <p className="text-xs text-gray-400 truncate mt-0.5 font-mono">
                        {item.filename}
                      </p>

                      {/* Progress Bar */}
                      <div className="w-full bg-surfaceHover h-2 rounded-full mt-3 overflow-hidden">
                        <div 
                          className={`h-full transition-all duration-300 rounded-full ${
                            isPaused ? 'bg-yellow-500' : 'bg-accent'
                          }`}
                          style={{ width: `${percent}%` }}
                        />
                      </div>

                      {/* Stats */}
                      <div className="flex items-center justify-between text-[11px] text-gray-400 mt-1.5 font-mono">
                        <span>{formatBytes(item.receivedBytes)} / {formatBytes(item.totalBytes)} ({percent}%)</span>
                        {!isPaused && item.speed > 0 && (
                          <span className="text-accent font-semibold">{formatBytes(item.speed)}/s</span>
                        )}
                      </div>
                    </div>
                  </div>

                  {/* Actions: Pause, Resume, Cancel */}
                  <div className="flex items-center gap-2 self-end sm:self-center">
                    {isPaused ? (
                      <button
                        onClick={() => handleResume(item.id)}
                        className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-accent hover:bg-accentHover text-white text-xs font-bold transition-all shadow-md"
                        title="Resume Download"
                      >
                        <Play className="w-3.5 h-3.5 fill-current" />
                        <span>Resume</span>
                      </button>
                    ) : (
                      <button
                        onClick={() => handlePause(item.id)}
                        className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-surfaceHover hover:bg-surfaceHover/80 text-white text-xs font-semibold border border-surfaceHover transition-all"
                        title="Pause Download"
                      >
                        <Pause className="w-3.5 h-3.5" />
                        <span>Pause</span>
                      </button>
                    )}

                    <button
                      onClick={() => handleCancel(item.id)}
                      className="p-2 rounded-xl bg-surfaceHover hover:bg-red-500/20 text-gray-400 hover:text-red-400 border border-surfaceHover transition-all"
                      title="Cancel Download"
                    >
                      <Trash2 className="w-4 h-4" />
                    </button>
                  </div>
                </div>
              );
            })}
          </div>
        ) : (
          <div className="py-20 text-center text-gray-400 bg-surface/50 rounded-3xl border border-surfaceHover p-8">
            <ArrowDownCircle className="w-12 h-12 mx-auto mb-3 text-gray-600" />
            <h4 className="text-base font-bold text-gray-300">No Active Downloads</h4>
            <p className="text-xs text-gray-500 mt-1 max-w-sm mx-auto">
              Click the "Download" button on any movie or TV series episode to download it for offline watching.
            </p>
          </div>
        )
      ) : (
        completedDownloads.length > 0 ? (
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
            {completedDownloads.map((item) => (
              <div 
                key={item.id}
                className="bg-surface border border-surfaceHover rounded-2xl p-4 flex flex-col justify-between gap-4 shadow-lg hover:border-accent/40 transition-all group"
              >
                <div className="flex items-start gap-3.5 min-w-0">
                  <div className="w-16 h-24 rounded-xl bg-surfaceHover overflow-hidden flex-shrink-0 relative border border-white/5">
                    {item.cover ? (
                      <img src={item.cover} alt={item.title} className="w-full h-full object-cover group-hover:scale-105 transition-transform" />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center text-gray-500">
                        <Film className="w-6 h-6" />
                      </div>
                    )}
                  </div>

                  <div className="min-w-0 flex-1">
                    <h4 className="text-sm font-bold text-white truncate group-hover:text-accent transition-colors">
                      {item.title}
                    </h4>
                    <p className="text-[11px] text-gray-400 font-mono truncate mt-0.5">
                      {item.filename}
                    </p>
                    <div className="flex items-center gap-2 mt-2 text-xs text-gray-400 font-mono">
                      <span className="px-2 py-0.5 rounded bg-surfaceHover text-gray-300 font-semibold">
                        {formatBytes(item.totalBytes)}
                      </span>
                      <span className="text-green-400 flex items-center gap-1 font-sans text-[11px]">
                        <CheckCircle2 className="w-3 h-3" /> Ready
                      </span>
                    </div>
                  </div>
                </div>

                {/* Bottom Card Actions */}
                <div className="flex items-center justify-between gap-2 pt-3 border-t border-surfaceHover">
                  <button
                    onClick={() => handlePlayOffline(item)}
                    className="flex-1 flex items-center justify-center gap-1.5 py-2 rounded-xl bg-accent hover:bg-accentHover text-white text-xs font-bold transition-all shadow-md shadow-accent/20"
                  >
                    <Play className="w-3.5 h-3.5 fill-current" />
                    <span>Play Offline</span>
                  </button>

                  <button
                    onClick={() => handleOpenFolder(item.filePath)}
                    className="p-2 rounded-xl bg-surfaceHover hover:bg-surfaceHover/80 text-gray-300 hover:text-white border border-surfaceHover transition-all"
                    title="Show in Folder"
                  >
                    <FolderOpen className="w-4 h-4 text-accent" />
                  </button>

                  <button
                    onClick={() => handleDeleteCompleted(item)}
                    className="p-2 rounded-xl bg-surfaceHover hover:bg-red-500/20 text-gray-400 hover:text-red-400 border border-surfaceHover transition-all"
                    title="Delete File"
                  >
                    <Trash2 className="w-4 h-4" />
                  </button>
                </div>
              </div>
            ))}
          </div>
        ) : (
          <div className="py-20 text-center text-gray-400 bg-surface/50 rounded-3xl border border-surfaceHover p-8">
            <HardDrive className="w-12 h-12 mx-auto mb-3 text-gray-600" />
            <h4 className="text-base font-bold text-gray-300">No Downloaded Files Found</h4>
            <p className="text-xs text-gray-500 mt-1 max-w-sm mx-auto">
              Movies and anime series you download will appear here for instant offline playback.
            </p>
          </div>
        )
      )}

    </div>
  );
}
