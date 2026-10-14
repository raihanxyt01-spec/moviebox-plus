import React from 'react';
import { X, ExternalLink, Download, AlertCircle, Play, ShieldAlert } from 'lucide-react';

export default function ExternalPlayerMissingModal({
  isOpen,
  onClose,
  player = 'vlc',
  platform = 'pc'
}) {
  if (!isOpen) return null;

  const isMobile = platform === 'mobile' || /Android|iPhone|iPad/i.test(navigator.userAgent);

  const vlcDownloadUrl = isMobile 
    ? 'https://play.google.com/store/apps/details?id=org.videolan.vlc'
    : 'https://www.videolan.org/vlc/';

  const potplayerDownloadUrl = 'https://potplayer.daum.net/';
  const mxplayerDownloadUrl = 'https://play.google.com/store/apps/details?id=com.mxtech.videoplayer.ad';

  const handleOpenLink = (url) => {
    if (window.electronAPI?.openExternal) {
      window.electronAPI.openExternal(url);
    } else {
      window.open(url, '_blank', 'noopener,noreferrer');
    }
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/85 backdrop-blur-md animate-in fade-in duration-200">
      <div className="relative w-full max-w-md bg-surface/98 rounded-3xl overflow-hidden shadow-2xl border border-surfaceHover p-6 text-center animate-in zoom-in-95 duration-200">
        
        {/* Close Button */}
        <button
          onClick={onClose}
          className="absolute top-4 right-4 p-2 rounded-full bg-surfaceHover hover:bg-surface text-gray-400 hover:text-white transition-colors"
        >
          <X className="w-4 h-4" />
        </button>

        {/* Warning Icon Badge */}
        <div className="w-16 h-16 rounded-3xl bg-orange-600/20 text-orange-400 border border-orange-500/30 flex items-center justify-center mx-auto mb-4 shadow-xl shadow-orange-600/20">
          <ShieldAlert className="w-8 h-8 text-orange-400 animate-pulse" />
        </div>

        {/* Title */}
        <h3 className="text-xl font-extrabold text-white mb-2">
          External Video Player Required
        </h3>

        {/* Description */}
        <p className="text-xs sm:text-sm text-gray-300 leading-relaxed mb-6">
          {isMobile ? (
            <>
              To play movies and series with <strong className="text-white">lossless 10-bit quality</strong>, multi-channel sound, and <strong className="text-orange-400">0% lag</strong>, please install <strong className="text-white">VLC for Android</strong> or <strong className="text-white">MX Player</strong> from the Google Play Store.
            </>
          ) : (
            <>
              MovieBox+ plays all ultra-high-definition streams in external players (<strong className="text-white">VLC Media Player</strong> or <strong className="text-white">PotPlayer</strong>) for maximum GPU performance and Dolby audio decoding. Please download and install VLC below.
            </>
          )}
        </p>

        {/* Actions */}
        <div className="flex flex-col gap-2.5">
          {/* Primary VLC Download Button */}
          <button
            onClick={() => handleOpenLink(vlcDownloadUrl)}
            className="w-full flex items-center justify-center gap-2 px-5 py-3.5 rounded-2xl bg-gradient-to-r from-orange-600 to-amber-600 hover:from-orange-500 hover:to-amber-500 text-white font-black text-sm shadow-xl shadow-orange-600/30 hover:scale-[1.02] active:scale-[0.98] transition-all cursor-pointer"
          >
            <Download className="w-4 h-4" />
            <span>{isMobile ? 'Download VLC on Google Play' : 'Download VLC Media Player (Official)'}</span>
            <ExternalLink className="w-3.5 h-3.5 ml-1 opacity-80" />
          </button>

          {/* Secondary Player Download Option */}
          {isMobile ? (
            <button
              onClick={() => handleOpenLink(mxplayerDownloadUrl)}
              className="w-full flex items-center justify-center gap-2 px-4 py-2.5 rounded-2xl bg-surfaceHover hover:bg-surface text-gray-300 hover:text-white font-bold text-xs border border-surfaceHover transition-all cursor-pointer"
            >
              <span>Download MX Player (Google Play)</span>
              <ExternalLink className="w-3 h-3 opacity-70" />
            </button>
          ) : (
            <button
              onClick={() => handleOpenLink(potplayerDownloadUrl)}
              className="w-full flex items-center justify-center gap-2 px-4 py-2.5 rounded-2xl bg-surfaceHover hover:bg-surface text-gray-300 hover:text-white font-bold text-xs border border-surfaceHover transition-all cursor-pointer"
            >
              <span>Download PotPlayer (Official Site)</span>
              <ExternalLink className="w-3 h-3 opacity-70" />
            </button>
          )}

          {/* Dismiss button */}
          <button
            onClick={onClose}
            className="w-full py-2 text-xs font-semibold text-gray-400 hover:text-gray-200 transition-colors mt-1"
          >
            Dismiss
          </button>
        </div>

      </div>
    </div>
  );
}
