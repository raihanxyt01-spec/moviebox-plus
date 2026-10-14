const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('electronAPI', {
  launchPlayer: (payload) => ipcRenderer.invoke('launch-player', payload),
  checkPlayers: () => ipcRenderer.invoke('check-players'),
  launchVlc: (streamUrl, options = {}) => ipcRenderer.invoke('launch-vlc', typeof streamUrl === 'object' ? streamUrl : { url: streamUrl, ...options }),
  checkVlc: () => ipcRenderer.invoke('check-vlc'),
  getProxyUrl: (url, cookie = '') => ipcRenderer.invoke('get-proxy-url', { url, cookie }),
  downloadFile: (url, filename, meta = {}) => ipcRenderer.invoke('start-download', { url, filename, ...meta }),
  pauseDownload: (id) => ipcRenderer.invoke('pause-download', id),
  resumeDownload: (id) => ipcRenderer.invoke('resume-download', id),
  cancelDownload: (id) => ipcRenderer.invoke('cancel-download', id),
  deleteDownload: (id, filePath) => ipcRenderer.invoke('delete-download', { id, filePath }),
  getDownloads: () => ipcRenderer.invoke('get-downloads'),
  openDownloadFolder: (filePath) => ipcRenderer.invoke('open-download-folder', filePath),
  onDownloadUpdate: (callback) => {
    const handler = (event, data) => callback(data);
    ipcRenderer.on('download-update', handler);
    return () => ipcRenderer.removeListener('download-update', handler);
  },
  fourkhdSearch: (query) => ipcRenderer.invoke('fourkhd-search', query),
  fourkhdDetails: (path) => ipcRenderer.invoke('fourkhd-details', path),
  fourkhdStreams: (args) => ipcRenderer.invoke('fourkhd-streams', args),
  resolveMirror: (mirrorUrl) => ipcRenderer.invoke('resolve-mirror', mirrorUrl),
});
