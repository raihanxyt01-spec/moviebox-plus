import React, { useState } from 'react';
import { Shield, ShieldAlert, Lock, Check, X, KeyRound, Trash2, Eye, EyeOff } from 'lucide-react';
import { getRestrictedSettings, saveRestrictedSettings, clearWatchHistory } from '../utils/contentFilter';

export default function ContentFilterSettingsModal({
  isOpen,
  onClose,
  onSettingsChanged
}) {
  const [settings, setSettings] = useState(() => getRestrictedSettings());
  const [pinInput, setPinInput] = useState('');
  const [newPin, setNewPin] = useState('');
  const [showPinPrompt, setShowPinPrompt] = useState(false);
  const [pinError, setPinError] = useState('');
  const [showSuccessToast, setShowSuccessToast] = useState(false);

  if (!isOpen) return null;

  const handleToggleRestricted = () => {
    // If enabling and a PIN is already configured, ask for PIN
    if (!settings.enabled && settings.pin) {
      setShowPinPrompt(true);
      setPinError('');
      return;
    }

    const nextState = !settings.enabled;
    saveRestrictedSettings(nextState, settings.pin);
    setSettings(prev => ({ ...prev, enabled: nextState }));
    if (onSettingsChanged) onSettingsChanged();
    triggerToast();
  };

  const handleVerifyPin = () => {
    if (pinInput === settings.pin) {
      saveRestrictedSettings(true, settings.pin);
      setSettings(prev => ({ ...prev, enabled: true }));
      setShowPinPrompt(false);
      setPinInput('');
      setPinError('');
      if (onSettingsChanged) onSettingsChanged();
      triggerToast();
    } else {
      setPinError('Incorrect PIN. Please try again.');
    }
  };

  const handleSaveNewPin = () => {
    saveRestrictedSettings(settings.enabled, newPin.trim());
    setSettings(prev => ({ ...prev, pin: newPin.trim() }));
    setNewPin('');
    triggerToast();
  };

  const triggerToast = () => {
    setShowSuccessToast(true);
    setTimeout(() => setShowSuccessToast(false), 2000);
  };

  useEffect(() => {
    const handleKeyDown = (e) => {
      if (e.key === 'Escape') onClose();
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [onClose]);

  return (
    <div 
      onClick={onClose}
      className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/85 backdrop-blur-md animate-in fade-in duration-150"
    >
      <div 
        onClick={(e) => e.stopPropagation()}
        className="relative w-full max-w-md bg-surface border border-surfaceHover rounded-3xl p-6 shadow-2xl flex flex-col gap-5 max-h-[90vh] overflow-y-auto"
      >
        
        {/* Header with Prominent Close Button */}
        <div className="flex items-center justify-between pb-3 border-b border-surfaceHover">
          <div className="flex items-center gap-2.5">
            <div className="p-2 rounded-xl bg-accent/20 text-accent">
              <Shield className="w-5 h-5" />
            </div>
            <div>
              <h3 className="text-base font-bold text-white">Content & Privacy Settings</h3>
              <p className="text-xs text-gray-400">Manage safe browsing and adult restrictions</p>
            </div>
          </div>
          <button 
            onClick={onClose} 
            className="p-2 rounded-full bg-surfaceHover hover:bg-red-500 text-gray-300 hover:text-white transition-all shadow-md"
            title="Close Settings (Esc)"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Success Toast */}
        {showSuccessToast && (
          <div className="px-3.5 py-2 rounded-xl bg-green-500/20 border border-green-500/40 text-green-300 text-xs font-semibold flex items-center gap-2">
            <Check className="w-4 h-4" /> Settings updated successfully
          </div>
        )}

        {/* Safe Browsing Status */}
        <div className="bg-background/60 p-4 rounded-2xl border border-surfaceHover space-y-2">
          <div className="flex items-center justify-between">
            <span className="text-xs font-bold text-white flex items-center gap-1.5">
              <Shield className="w-4 h-4 text-green-400" />
              Smart Safe Browsing
            </span>
            <span className="px-2 py-0.5 rounded-full text-[10px] font-bold bg-green-500/20 text-green-400">
              Active
            </span>
          </div>
          <p className="text-[11px] text-gray-400">
            Automatically isolates explicitly sexual material from Home recommendations, Featured banner, and Recently Uploaded shelves.
          </p>
        </div>

        {/* Restricted Adult Category Toggle */}
        <div className="flex items-center justify-between p-3.5 rounded-2xl bg-surfaceHover/50 border border-surfaceHover">
          <div className="space-y-0.5">
            <p className="text-xs font-bold text-white flex items-center gap-1.5">
              <ShieldAlert className="w-4 h-4 text-orange-400" />
              Dedicated Restricted Category
            </p>
            <p className="text-[11px] text-gray-400">
              Displays separate 18+ Adult tab in navigation
            </p>
          </div>

          <button
            onClick={handleToggleRestricted}
            className={`w-12 h-6 rounded-full transition-colors relative flex items-center px-1 ${settings.enabled ? 'bg-accent' : 'bg-gray-600'}`}
          >
            <div className={`w-4 h-4 rounded-full bg-white transition-transform ${settings.enabled ? 'translate-x-6' : 'translate-x-0'}`} />
          </button>
        </div>

        {/* PIN Verification Prompt */}
        {showPinPrompt && (
          <div className="p-4 rounded-2xl bg-surfaceHover border border-accent/40 space-y-3 animate-in fade-in">
            <p className="text-xs font-bold text-white flex items-center gap-1.5">
              <Lock className="w-4 h-4 text-accent" /> Enter Parental / Security PIN
            </p>
            <input
              type="password"
              maxLength={6}
              value={pinInput}
              onChange={(e) => setPinInput(e.target.value)}
              placeholder="Enter PIN..."
              className="w-full bg-background text-white text-center tracking-widest text-base rounded-xl py-2 px-3 focus:outline-none focus:border-accent border border-surfaceHover"
            />
            {pinError && <p className="text-xs text-red-400 font-semibold">{pinError}</p>}
            <div className="flex gap-2">
              <button
                onClick={handleVerifyPin}
                className="flex-1 py-2 rounded-xl bg-accent text-white font-bold text-xs"
              >
                Verify & Unlock
              </button>
              <button
                onClick={() => setShowPinPrompt(false)}
                className="px-3 py-2 rounded-xl bg-surfaceHover text-gray-300 text-xs font-semibold"
              >
                Cancel
              </button>
            </div>
          </div>
        )}

        {/* Configure / Change Security PIN */}
        <div className="space-y-2 pt-1 border-t border-surfaceHover">
          <label className="text-xs font-bold text-gray-300 flex items-center gap-1.5">
            <KeyRound className="w-3.5 h-3.5 text-accent" /> 
            {settings.pin ? 'Change Security PIN' : 'Set Optional Security PIN (4-6 digits)'}
          </label>
          <div className="flex gap-2">
            <input
              type="password"
              maxLength={6}
              value={newPin}
              onChange={(e) => setNewPin(e.target.value)}
              placeholder={settings.pin ? "New PIN (leave blank to remove)" : "e.g. 1234"}
              className="flex-1 bg-background text-white text-xs rounded-xl px-3 py-2 border border-surfaceHover focus:outline-none focus:border-accent"
            />
            <button
              onClick={handleSaveNewPin}
              className="px-4 py-2 rounded-xl bg-surfaceHover hover:bg-surfaceHover/80 text-white font-bold text-xs transition-all"
            >
              Save PIN
            </button>
          </div>
        </div>

        {/* Clear Library History */}
        <div className="pt-2 border-t border-surfaceHover flex justify-between items-center">
          <span className="text-xs text-gray-400">Clear all local playback history</span>
          <button
            onClick={() => {
              clearWatchHistory();
              if (onSettingsChanged) onSettingsChanged();
              triggerToast();
            }}
            className="flex items-center gap-1.5 px-3 py-1.5 rounded-xl bg-surfaceHover hover:bg-red-500/20 text-gray-300 hover:text-red-400 text-xs font-semibold transition-all"
          >
            <Trash2 className="w-3.5 h-3.5" /> Clear History
          </button>
        </div>

        {/* Done / Close Button */}
        <div className="pt-2 border-t border-surfaceHover">
          <button
            onClick={onClose}
            className="w-full py-2.5 rounded-xl bg-accent hover:bg-accentHover text-white font-bold text-xs shadow-md transition-all active:scale-95 flex items-center justify-center gap-1.5"
          >
            <Check className="w-4 h-4" /> Done / Close Settings
          </button>
        </div>

      </div>
    </div>
  );
}
