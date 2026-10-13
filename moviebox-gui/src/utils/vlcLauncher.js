import { Capacitor, registerPlugin } from '@capacitor/core';

// Native Android player bridge
const VlcBridge = Capacitor.isNativePlatform() ? registerPlugin('VlcBridge') : null;

export const EXTERNAL_PLAYERS = {
  // Desktop Windows Players
  VLC: 'vlc',
  POTPLAYER: 'potplayer',
  // Mobile Android Players
  MXPLAYER: 'mxplayer',
  SYSTEM: 'system'
};

/**
 * Get user preference for external player engine
 * PC defaults to 'vlc', Mobile defaults to 'vlc'
 */
export function getPreferredPlayer() {
  const saved = localStorage.getItem('mb_preferred_player');
  if (saved) return saved;
  return EXTERNAL_PLAYERS.VLC;
}

/**
 * Set user preference for external player engine
 */
export function setPreferredPlayer(player) {
  localStorage.setItem('mb_preferred_player', player);
}

/**
 * Check which external players are available on the user's system/device
 */
export async function checkAvailablePlayers() {
  if (window.electronAPI && window.electronAPI.checkPlayers) {
    try {
      const res = await window.electronAPI.checkPlayers();
      return res || { vlc: { available: true }, potplayer: { available: false } };
    } catch (e) {
      return { vlc: { available: true }, potplayer: { available: false } };
    }
  }

  if (VlcBridge) {
    try {
      const vlcCheck = await VlcBridge.isVlcInstalled().catch(() => ({ installed: true }));
      const mxCheck = await VlcBridge.isMxPlayerInstalled().catch(() => ({ installed: false }));
      return {
        vlc: { available: vlcCheck?.installed ?? true },
        mxplayer: { available: mxCheck?.installed ?? false },
        system: { available: true }
      };
    } catch (e) {
      return { vlc: { available: true }, mxplayer: { available: true }, system: { available: true } };
    }
  }

  return { vlc: { available: true }, potplayer: { available: false }, system: { available: true } };
}

/**
 * Check if VLC is available
 */
export async function isVlcAvailable() {
  const players = await checkAvailablePlayers();
  return !!players.vlc?.available;
}

/**
 * Launch playback strictly in external player (VLC / PotPlayer on PC; VLC / MX Player / System on Mobile)
 * Completely eliminates any embedded in-app player.
 */
export async function launchExternalPlayback({ url, title, subtitleUrl, cookie, player = null }) {
  if (!url) {
    return { success: false, error: 'No stream URL provided' };
  }

  const chosenPlayer = player || getPreferredPlayer();
  const safeTitle = title || 'MovieBox Video';

  // 1. Electron Desktop (Windows: VLC or PotPlayer)
  if (window.electronAPI && window.electronAPI.launchPlayer) {
    try {
      const res = await window.electronAPI.launchPlayer({
        player: chosenPlayer,
        url,
        title: safeTitle,
        subtitleUrl: subtitleUrl || null,
        cookie: cookie || null
      });
      return { success: true, ...res };
    } catch (err) {
      console.error('Electron launchPlayer error:', err);
      return { success: false, error: err.message };
    }
  }

  // 2. Android Device (Capacitor: VLC, MX Player, or System Chooser)
  if (VlcBridge) {
    try {
      const res = await VlcBridge.launchPlayer({
        player: chosenPlayer,
        url,
        title: safeTitle,
        subtitleUrl: subtitleUrl || null,
        cookie: cookie || null
      });
      return { success: true, ...res };
    } catch (err) {
      console.error('Android launchPlayer error:', err);
      // Fallback: try web intent
    }
  }

  // 3. Fallback for mobile browser / Android intent URL
  try {
    const isAndroid = /Android/i.test(navigator.userAgent);
    if (isAndroid) {
      const cleanUrl = url.replace(/^https?:\/\//i, '');
      let intentUri;
      if (chosenPlayer === 'mxplayer') {
        intentUri = `intent://${cleanUrl}#Intent;action=android.intent.action.VIEW;type=video/*;package=com.mxtech.videoplayer.ad;S.title=${encodeURIComponent(safeTitle)};end`;
      } else if (chosenPlayer === 'vlc') {
        intentUri = `intent://${cleanUrl}#Intent;action=android.intent.action.VIEW;type=video/*;package=org.videolan.vlc;S.title=${encodeURIComponent(safeTitle)};end`;
      } else {
        intentUri = `intent://${cleanUrl}#Intent;action=android.intent.action.VIEW;type=video/*;S.title=${encodeURIComponent(safeTitle)};end`;
      }
      window.location.href = intentUri;
      return { success: true, intent: true };
    }
  } catch (e) {}

  window.open(url, '_blank');
  return { success: true, fallback: true };
}

// Keep launchVlcPlayback as alias
export const launchVlcPlayback = launchExternalPlayback;
export const PLAYER_ENGINES = EXTERNAL_PLAYERS;
