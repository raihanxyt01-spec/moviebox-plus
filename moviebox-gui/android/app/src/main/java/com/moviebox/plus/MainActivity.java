package com.moviebox.plus;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.core.content.FileProvider;
import com.getcapacitor.BridgeActivity;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class MainActivity extends BridgeActivity {
    @Override
    public void onCreate(Bundle savedInstanceState) {
        registerPlugin(VlcBridgePlugin.class);
        super.onCreate(savedInstanceState);
    }

    @CapacitorPlugin(name = "VlcBridge")
    public static class VlcBridgePlugin extends Plugin {

        @PluginMethod
        public void isVlcInstalled(PluginCall call) {
            boolean installed = checkPackageInstalled(getContext(), "org.videolan.vlc");
            JSObject ret = new JSObject();
            ret.put("installed", installed);
            call.resolve(ret);
        }

        @PluginMethod
        public void isMxPlayerInstalled(PluginCall call) {
            boolean installed = checkPackageInstalled(getContext(), "com.mxtech.videoplayer.ad") || 
                                checkPackageInstalled(getContext(), "com.mxtech.videoplayer.pro");
            JSObject ret = new JSObject();
            ret.put("installed", installed);
            call.resolve(ret);
        }

        @PluginMethod
        public void launchPlayer(PluginCall call) {
            String url = call.getString("url");
            String title = call.getString("title", "MovieBox Video");
            String subtitleUrl = call.getString("subtitleUrl");
            String targetPlayer = call.getString("player", "vlc");
            String cookie = call.getString("cookie");

            if (url == null || url.trim().isEmpty()) {
                call.reject("Playback URL cannot be empty");
                return;
            }

            Context ctx = getContext();
            try {
                Intent intent = new Intent(Intent.ACTION_VIEW);
                intent.setDataAndType(Uri.parse(url), "video/*");
                intent.putExtra("title", title);
                if (subtitleUrl != null && !subtitleUrl.trim().isEmpty()) {
                    intent.putExtra("subtitles_location", Uri.parse(subtitleUrl));
                }

                // Attach custom CDN headers for VLC & ExoPlayer
                Bundle headers = new Bundle();
                headers.putString("Referer", "https://sportslive.wine");
                headers.putString("Origin", "https://sportslive.wine");
                headers.putString("User-Agent", "com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)");
                if (cookie != null && !cookie.trim().isEmpty()) {
                    headers.putString("Cookie", cookie);
                }
                intent.putExtra("android.media.intent.extra.HTTP_HEADERS", headers);

                // Attach headers for MX Player
                String[] mxHeaders = (cookie != null && !cookie.trim().isEmpty())
                    ? new String[] {
                        "Referer", "https://sportslive.wine",
                        "Origin", "https://sportslive.wine",
                        "User-Agent", "com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)",
                        "Cookie", cookie
                      }
                    : new String[] {
                        "Referer", "https://sportslive.wine",
                        "Origin", "https://sportslive.wine",
                        "User-Agent", "com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)"
                      };
                intent.putExtra("headers", mxHeaders);

                // Subtitle bindings for external players
                if (subtitleUrl != null && !subtitleUrl.trim().isEmpty()) {
                    Uri subUri = Uri.parse(subtitleUrl);
                    intent.putExtra("subtitles_location", subUri);
                    intent.putExtra("subs", new Uri[] { subUri });
                    intent.putExtra("subs.enable", new Uri[] { subUri });
                    intent.putExtra("title_subtitle", subtitleUrl);
                }

                boolean vlcInstalled = checkPackageInstalled(ctx, "org.videolan.vlc");
                boolean mxInstalled = checkPackageInstalled(ctx, "com.mxtech.videoplayer.ad") || 
                                      checkPackageInstalled(ctx, "com.mxtech.videoplayer.pro");

                // Specific player targeting or automatic fallback
                if ("mxplayer".equalsIgnoreCase(targetPlayer)) {
                    if (checkPackageInstalled(ctx, "com.mxtech.videoplayer.ad")) {
                        intent.setPackage("com.mxtech.videoplayer.ad");
                    } else if (checkPackageInstalled(ctx, "com.mxtech.videoplayer.pro")) {
                        intent.setPackage("com.mxtech.videoplayer.pro");
                    } else if (vlcInstalled) {
                        intent.setPackage("org.videolan.vlc");
                    } else {
                        // Neither player installed -> notify and redirect to Play Store
                        openPlayStore(ctx, "org.videolan.vlc");
                        JSObject ret = new JSObject();
                        ret.put("success", false);
                        ret.put("notInstalled", true);
                        ret.put("player", "mxplayer");
                        call.resolve(ret);
                        return;
                    }
                } else {
                    // Default: VLC
                    if (vlcInstalled) {
                        intent.setPackage("org.videolan.vlc");
                    } else if (mxInstalled) {
                        if (checkPackageInstalled(ctx, "com.mxtech.videoplayer.ad")) {
                            intent.setPackage("com.mxtech.videoplayer.ad");
                        } else {
                            intent.setPackage("com.mxtech.videoplayer.pro");
                        }
                    } else {
                        // Neither player installed -> notify and redirect to Play Store
                        openPlayStore(ctx, "org.videolan.vlc");
                        JSObject ret = new JSObject();
                        ret.put("success", false);
                        ret.put("notInstalled", true);
                        ret.put("player", "vlc");
                        call.resolve(ret);
                        return;
                    }
                }

                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                ctx.startActivity(intent);

                JSObject ret = new JSObject();
                ret.put("success", true);
                ret.put("launched", true);
                call.resolve(ret);
            } catch (Exception e) {
                call.reject("Failed to launch external player: " + e.getMessage());
            }
        }

        @PluginMethod
        public void launchVlc(PluginCall call) {
            launchPlayer(call);
        }

        private void openPlayStore(Context ctx, String packageName) {
            try {
                Intent marketIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=" + packageName));
                marketIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                ctx.startActivity(marketIntent);
            } catch (Exception e) {
                try {
                    Intent webIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("https://play.google.com/store/apps/details?id=" + packageName));
                    webIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                    ctx.startActivity(webIntent);
                } catch (Exception ignored) {}
            }
        }

        private boolean checkPackageInstalled(Context context, String packageName) {
            PackageManager pm = context.getPackageManager();
            try {
                pm.getPackageInfo(packageName, PackageManager.GET_ACTIVITIES);
                return true;
            } catch (PackageManager.NameNotFoundException e) {
                return false;
            }
        }
    }
}
