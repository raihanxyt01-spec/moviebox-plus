import React from 'react';
import { AlertCircle, RotateCcw } from 'lucide-react';

export default class ErrorBoundary extends React.Component {
  constructor(props) {
    super(props);
    this.state = { hasError: false, error: null };
  }

  static getDerivedStateFromError(error) {
    return { hasError: true, error };
  }

  componentDidCatch(error, errorInfo) {
    console.error('ErrorBoundary caught error:', error, errorInfo);
  }

  handleReset = () => {
    this.setState({ hasError: false, error: null });
    if (this.props.onReset) {
      this.props.onReset();
    }
  };

  render() {
    if (this.state.hasError) {
      if (this.props.fallback) {
        return this.props.fallback({ error: this.state.error, reset: this.handleReset });
      }

      return (
        <div className="fixed inset-0 z-50 flex items-center justify-center bg-background/95 backdrop-blur-xl p-6 select-none">
          <div className="max-w-md w-full bg-surface border border-red-500/30 rounded-3xl p-6 shadow-2xl text-center flex flex-col items-center gap-4 animate-in fade-in zoom-in-95">
            <div className="w-16 h-16 rounded-2xl bg-red-500/10 border border-red-500/30 flex items-center justify-center text-red-500 shadow-inner">
              <AlertCircle className="w-8 h-8" />
            </div>
            <div>
              <h2 className="text-lg font-bold text-white mb-1">Playback Notice</h2>
              <p className="text-xs text-gray-400">
                {this.state.error?.message || 'A transient display error occurred. You can safely retry or return.'}
              </p>
            </div>
            <div className="flex items-center gap-3 w-full">
              <button
                onClick={this.handleReset}
                className="flex-1 py-3 px-4 rounded-xl bg-accent hover:bg-accentHover text-white font-bold text-xs shadow-lg shadow-accent/25 transition-all flex items-center justify-center gap-2"
              >
                <RotateCcw className="w-4 h-4" /> Retry Stream
              </button>
              {this.props.onClose && (
                <button
                  onClick={this.props.onClose}
                  className="py-3 px-4 rounded-xl bg-surfaceHover hover:bg-surfaceHover/80 text-gray-300 hover:text-white font-semibold text-xs border border-surfaceHover transition-all"
                >
                  Close
                </button>
              )}
            </div>
          </div>
        </div>
      );
    }

    return this.props.children;
  }
}
