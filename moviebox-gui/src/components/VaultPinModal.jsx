import React, { useState, useEffect, useRef } from 'react';
import { Lock, KeyRound, ShieldAlert, X, Check, Eye, EyeOff } from 'lucide-react';

export default function VaultPinModal({ isOpen, onClose, onSuccess }) {
  const [pin, setPin] = useState('');
  const [confirmPin, setConfirmPin] = useState('');
  const [error, setError] = useState('');
  const [showPin, setShowPin] = useState(false);
  const [isSetupMode, setIsSetupMode] = useState(false);
  const inputRef = useRef(null);

  useEffect(() => {
    if (isOpen) {
      const stored = localStorage.getItem('mb_vault_pin');
      setIsSetupMode(!stored);
      setPin('');
      setConfirmPin('');
      setError('');
      setTimeout(() => inputRef.current?.focus(), 100);
    }
  }, [isOpen]);

  if (!isOpen) return null;

  const handleSubmit = (e) => {
    e?.preventDefault();
    setError('');

    if (isSetupMode) {
      if (pin.length < 4) {
        setError('PIN must be at least 4 digits');
        return;
      }
      if (pin !== confirmPin) {
        setError('PINs do not match. Please re-enter.');
        return;
      }
      localStorage.setItem('mb_vault_pin', pin);
      sessionStorage.setItem('mb_vault_unlocked', 'true');
      onSuccess();
      onClose();
    } else {
      const stored = localStorage.getItem('mb_vault_pin');
      if (pin === stored) {
        sessionStorage.setItem('mb_vault_unlocked', 'true');
        onSuccess();
        onClose();
      } else {
        setError('Incorrect PIN. Please try again.');
        setPin('');
      }
    }
  };

  const handleResetPin = () => {
    if (window.confirm('Reset your 18+ Vault PIN? You will be prompted to create a new one.')) {
      localStorage.removeItem('mb_vault_pin');
      setIsSetupMode(true);
      setPin('');
      setConfirmPin('');
      setError('');
    }
  };

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4 bg-black/85 backdrop-blur-md animate-in fade-in duration-200">
      <div className="relative w-full max-w-md bg-surface/98 border border-red-500/30 rounded-3xl p-6 sm:p-8 shadow-2xl shadow-red-950/30 flex flex-col gap-5">
        
        {/* Close Button */}
        <button
          onClick={onClose}
          className="absolute top-4 right-4 p-2 rounded-full bg-surfaceHover hover:bg-surface text-gray-400 hover:text-white transition-colors"
        >
          <X className="w-5 h-5" />
        </button>

        {/* Icon & Title */}
        <div className="flex flex-col items-center text-center gap-2 pt-2">
          <div className="w-14 h-14 rounded-2xl bg-red-600/20 border border-red-500/40 flex items-center justify-center shadow-lg shadow-red-600/20">
            {isSetupMode ? (
              <KeyRound className="w-7 h-7 text-red-400" />
            ) : (
              <Lock className="w-7 h-7 text-red-400" />
            )}
          </div>
          <h3 className="text-xl font-black text-white tracking-tight">
            {isSetupMode ? 'Create Security PIN' : '18+ Restricted Vault'}
          </h3>
          <p className="text-xs text-gray-400 max-w-xs leading-relaxed">
            {isSetupMode 
              ? 'Create a 4-digit PIN to protect and access the 18+ adult and restricted entertainment vault.'
              : 'Enter your 4-digit security PIN to access the 18+ adult collection.'}
          </p>
        </div>

        {/* Form */}
        <form onSubmit={handleSubmit} className="space-y-4">
          <div className="space-y-1.5">
            <label className="text-xs font-bold text-gray-300 uppercase tracking-wider block">
              {isSetupMode ? 'Create 4-Digit PIN' : 'Enter PIN'}
            </label>
            <div className="relative">
              <input
                ref={inputRef}
                type={showPin ? 'text' : 'password'}
                maxLength={8}
                value={pin}
                onChange={(e) => setPin(e.target.value)}
                placeholder="••••"
                className="w-full bg-background border border-surfaceHover focus:border-red-500 rounded-xl px-4 py-3 text-center text-xl font-mono tracking-widest text-white outline-none transition-all"
                autoComplete="off"
              />
              <button
                type="button"
                onClick={() => setShowPin(!showPin)}
                className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 hover:text-white p-1"
              >
                {showPin ? <EyeOff className="w-4 h-4" /> : <Eye className="w-4 h-4" />}
              </button>
            </div>
          </div>

          {isSetupMode && (
            <div className="space-y-1.5">
              <label className="text-xs font-bold text-gray-300 uppercase tracking-wider block">
                Confirm 4-Digit PIN
              </label>
              <input
                type={showPin ? 'text' : 'password'}
                maxLength={8}
                value={confirmPin}
                onChange={(e) => setConfirmPin(e.target.value)}
                placeholder="••••"
                className="w-full bg-background border border-surfaceHover focus:border-red-500 rounded-xl px-4 py-3 text-center text-xl font-mono tracking-widest text-white outline-none transition-all"
                autoComplete="off"
              />
            </div>
          )}

          {error && (
            <div className="p-2.5 rounded-xl bg-red-600/15 border border-red-500/40 text-red-400 text-xs font-semibold text-center animate-in fade-in">
              {error}
            </div>
          )}

          <div className="pt-2 flex flex-col gap-2">
            <button
              type="submit"
              className="w-full py-3 rounded-xl bg-gradient-to-r from-red-600 to-rose-600 hover:from-red-500 hover:to-rose-500 text-white font-bold text-sm shadow-xl shadow-red-600/30 transition-all flex items-center justify-center gap-2"
            >
              <Check className="w-4 h-4" />
              <span>{isSetupMode ? 'Save PIN & Unlock Vault' : 'Unlock 18+ Vault'}</span>
            </button>

            {!isSetupMode && (
              <button
                type="button"
                onClick={handleResetPin}
                className="text-xs text-gray-400 hover:text-white transition-colors py-1 text-center"
              >
                Forgot or Change PIN?
              </button>
            )}
          </div>
        </form>

      </div>
    </div>
  );
}
