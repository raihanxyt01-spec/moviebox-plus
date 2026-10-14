import React, { useEffect } from 'react';
import { 
  X, Film, Sparkles, Tv, Clapperboard, Compass, 
  Search, Download, Star, ShieldAlert, Lock, ChevronRight 
} from 'lucide-react';

export default function SideDrawer({
  isOpen,
  onClose,
  activeTab,
  onSelectTab,
  onOpenVault,
  activeDownloadsCount = 0
}) {
  useEffect(() => {
    const handleKeyDown = (e) => {
      if (e.key === 'Escape' && isOpen) onClose();
    };
    window.addEventListener('keydown', handleKeyDown);
    return () => window.removeEventListener('keydown', handleKeyDown);
  }, [isOpen, onClose]);

  if (!isOpen) return null;

  const NAV_ITEMS = [
    { id: 'home', label: 'Discover & Featured', icon: Compass },
    { id: 'latest', label: 'Recently Uploaded Releases', icon: Sparkles, badge: 'New' },
    { id: 'movies', label: 'Blockbuster Movies', icon: Film },
    { id: 'series', label: 'TV & Web Series', icon: Tv },
    { id: 'anime', label: 'Anime Releases', icon: Clapperboard },
    { id: 'search', label: 'Smart Search & Explore', icon: Search },
    { 
      id: 'downloads', 
      label: 'Download Manager', 
      icon: Download, 
      count: activeDownloadsCount 
    },
    { id: 'favorites', label: 'My Saved Favorites', icon: Star },
  ];

  const handleItemClick = (id) => {
    onSelectTab(id);
    onClose();
  };

  const handleVaultClick = () => {
    onOpenVault();
    onClose();
  };

  return (
    <div className="fixed inset-0 z-50 flex animate-in fade-in duration-200">
      {/* Dark backdrop */}
      <div 
        onClick={onClose} 
        className="fixed inset-0 bg-black/80 backdrop-blur-sm transition-opacity" 
      />

      {/* Slide-out Drawer from Left */}
      <div className="relative w-80 max-w-[85vw] h-full bg-surface border-r border-surfaceHover shadow-2xl flex flex-col z-10 animate-in slide-in-from-left duration-200">
        
        {/* Header */}
        <div className="p-5 border-b border-surfaceHover flex items-center justify-between bg-background/50">
          <div className="flex items-center gap-2.5">
            <div className="w-9 h-9 rounded-xl overflow-hidden shadow-lg shadow-orange-600/30 flex items-center justify-center bg-black border border-orange-500/30">
              <img 
                src="/logo.png" 
                alt="MovieBox+ Logo" 
                className="w-full h-full object-cover"
              />
            </div>
            <div className="flex flex-col">
              <span className="text-lg font-black text-white tracking-tight">
                MovieBox<span className="text-accent">+</span>
              </span>
              <span className="text-[10px] text-gray-400 font-semibold tracking-wider uppercase">
                Navigation Menu
              </span>
            </div>
          </div>

          <button
            onClick={onClose}
            className="p-2 rounded-xl bg-surfaceHover hover:bg-surface text-gray-400 hover:text-white transition-colors"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Navigation List */}
        <div className="p-3 overflow-y-auto flex-1 space-y-1">
          <div className="px-3 py-2 text-[10px] font-bold text-gray-400 uppercase tracking-wider">
            Explore Content
          </div>

          {NAV_ITEMS.map((item) => {
            const Icon = item.icon;
            const isActive = activeTab === item.id;

            return (
              <button
                key={item.id}
                onClick={() => handleItemClick(item.id)}
                className={`w-full flex items-center justify-between px-3.5 py-3 rounded-2xl text-xs font-bold transition-all ${
                  isActive
                    ? 'bg-accent text-white shadow-lg shadow-accent/20 scale-[1.02]'
                    : 'text-gray-300 hover:bg-surfaceHover hover:text-white'
                }`}
              >
                <div className="flex items-center gap-3">
                  <Icon className={`w-4 h-4 ${isActive ? 'text-white' : 'text-gray-400'}`} />
                  <span>{item.label}</span>
                </div>

                <div className="flex items-center gap-2">
                  {item.badge && (
                    <span className="px-1.5 py-0.5 rounded text-[9px] font-black uppercase tracking-wider bg-orange-500/20 text-orange-400 border border-orange-500/30">
                      {item.badge}
                    </span>
                  )}
                  {item.count > 0 && (
                    <span className="px-2 py-0.5 rounded-full text-[10px] font-black bg-accent text-white shadow-sm">
                      {item.count}
                    </span>
                  )}
                  <ChevronRight className={`w-3.5 h-3.5 opacity-60 ${isActive ? 'text-white' : 'text-gray-500'}`} />
                </div>
              </button>
            );
          })}
        </div>

        {/* Bottom Vault Section (18+ Adult & Restricted Content with PIN) */}
        <div className="p-3 border-t border-surfaceHover bg-background/60">
          <button
            onClick={handleVaultClick}
            className={`w-full flex items-center justify-between p-3.5 rounded-2xl border transition-all ${
              activeTab === 'restricted'
                ? 'bg-red-600 border-red-500 text-white shadow-xl shadow-red-600/30'
                : 'bg-red-950/20 hover:bg-red-900/30 border-red-500/30 text-red-300 hover:text-white'
            }`}
          >
            <div className="flex items-center gap-3">
              <div className="w-8 h-8 rounded-xl bg-red-600/30 border border-red-500/40 flex items-center justify-center">
                <Lock className="w-4 h-4 text-red-400" />
              </div>
              <div className="text-left">
                <span className="block text-xs font-black tracking-tight text-white flex items-center gap-1.5">
                  <span>18+ Restricted Vault</span>
                  <span className="px-1.5 py-0.2 rounded text-[9px] font-bold bg-red-600 text-white">PIN</span>
                </span>
                <span className="text-[10px] text-gray-400">
                  Hidden adult & erotic collection
                </span>
              </div>
            </div>

            <ChevronRight className="w-4 h-4 text-red-400" />
          </button>
        </div>

      </div>
    </div>
  );
}
