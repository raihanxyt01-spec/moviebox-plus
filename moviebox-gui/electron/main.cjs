const { app, BrowserWindow, ipcMain, shell, dialog } = require('electron');
const path = require('path');
const { spawn } = require('child_process');
const fs = require('fs');
const http = require('http');
const https = require('https');
const { URL } = require('url');

// Ultra-high performance hardware accelerated GPU rendering & video decoding pipeline
app.commandLine.appendSwitch('ignore-gpu-blocklist');
app.commandLine.appendSwitch('enable-gpu-rasterization');
app.commandLine.appendSwitch('enable-zero-copy');
app.commandLine.appendSwitch('enable-hardware-overlays');
app.commandLine.appendSwitch('enable-accelerated-video-decode');
app.commandLine.appendSwitch('enable-accelerated-mjpeg-decode');
app.commandLine.appendSwitch('enable-gpu-memory-buffer-video-frames');
app.commandLine.appendSwitch('disable-frame-rate-limit');
app.commandLine.appendSwitch('use-angle', 'd3d11');
app.commandLine.appendSwitch('autoplay-policy', 'no-user-gesture-required');
app.commandLine.appendSwitch('enable-experimental-web-platform-features');
app.commandLine.appendSwitch('disable-background-timer-throttling');
app.commandLine.appendSwitch('disable-renderer-backgrounding');
app.commandLine.appendSwitch('enable-features', 'PlatformHEVCDecoderSupport,VaapiVideoDecoder,CanvasOopRasterization,UseMultiPlaneFormatForHardwareVideo,PlatformAudioDecoder');

// High performance persistent connection agents to avoid TCP/TLS handshake latency on media segments
const httpAgent = new http.Agent({
  keepAlive: true,
  maxSockets: 64,
  keepAliveMsecs: 60000,
});

const httpsAgent = new https.Agent({
  keepAlive: true,
  maxSockets: 64,
  keepAliveMsecs: 60000,
});

let proxyPort = 0;
const hostCookies = new Map();

// High speed in-memory cache architecture (matching MovieBox-Tui proxy.rs)
const MAX_CACHED_SEGMENTS = 64;
const segmentCache = new Map(); // url -> { contentType, data: Buffer, timestamp }
const inFlightSegments = new Map(); // url -> Promise<{ contentType, data: Buffer }>
const manifestCache = new Map(); // url -> { rewritten: string, timestamp }

function getCachedSegment(url) {
  const item = segmentCache.get(url);
  if (item) {
    segmentCache.delete(url);
    segmentCache.set(url, item); // LRU refresh
    return item;
  }
  return null;
}

function storeCachedSegment(url, contentType, data) {
  if (segmentCache.has(url)) {
    segmentCache.delete(url);
  } else if (segmentCache.size >= MAX_CACHED_SEGMENTS) {
    const oldestKey = segmentCache.keys().next().value;
    if (oldestKey) segmentCache.delete(oldestKey);
  }
  segmentCache.set(url, { contentType, data, timestamp: Date.now() });
}

function computeNextDashSegmentUrls(url, count = 3) {
  const queryIdx = url.indexOf('?');
  const base = queryIdx !== -1 ? url.slice(0, queryIdx) : url;
  const querySuffix = queryIdx !== -1 ? url.slice(queryIdx) : '';
  
  if (!base.toLowerCase().endsWith('.m4s')) return [];
  const withoutExt = base.slice(0, -4);
  const slashIdx = withoutExt.lastIndexOf('/');
  const fileStem = slashIdx !== -1 ? withoutExt.slice(slashIdx + 1) : withoutExt;

  if (fileStem.startsWith('init-stream')) {
    const initId = fileStem.replace('init-stream', '');
    const dirPrefix = withoutExt.slice(0, withoutExt.length - fileStem.length);
    if (initId === '3') {
      return [`${dirPrefix}init-stream0.m4s${querySuffix}`];
    } else {
      return [`${dirPrefix}init-stream3.m4s${querySuffix}`];
    }
  }

  if (fileStem.toLowerCase().startsWith('init')) return [];

  let digitCount = 0;
  for (let i = withoutExt.length - 1; i >= 0; i--) {
    const c = withoutExt.charCodeAt(i);
    if (c >= 48 && c <= 57) digitCount++;
    else break;
  }
  if (digitCount === 0 || digitCount > 9) return [];

  const splitPos = withoutExt.length - digitCount;
  const prefix = withoutExt.slice(0, splitPos);
  const digits = withoutExt.slice(splitPos);
  const num = parseInt(digits, 10);
  if (isNaN(num)) return [];

  const out = [];
  for (let step = 1; step <= count; step++) {
    const nextNum = num + step;
    out.push(`${prefix}${String(nextNum).padStart(digitCount, '0')}.m4s${querySuffix}`);
  }

  for (const vidTag of ['chunk-stream0-', 'chunk-stream1-', 'chunk-stream2-']) {
    if (prefix.endsWith(vidTag)) {
      const dirPrefix = prefix.slice(0, prefix.length - vidTag.length);
      out.push(`${dirPrefix}chunk-stream3-${String(num).padStart(digitCount, '0')}.m4s${querySuffix}`);
      out.push(`${dirPrefix}chunk-stream3-${String(num + 1).padStart(digitCount, '0')}.m4s${querySuffix}`);
      break;
    }
  }

  return out;
}

function fetchAndCacheSegment(targetUrlStr, cookie) {
  const cached = getCachedSegment(targetUrlStr);
  if (cached) return Promise.resolve(cached);

  if (inFlightSegments.has(targetUrlStr)) {
    return inFlightSegments.get(targetUrlStr);
  }

  let targetUrl;
  try {
    targetUrl = new URL(targetUrlStr);
  } catch (e) {
    return Promise.reject(e);
  }

  const p = new Promise((resolve, reject) => {
    const client = targetUrl.protocol === 'https:' ? https : http;
    const headers = {
      'Referer': 'https://sportslive.wine',
      'Origin': 'https://sportslive.wine',
      'User-Agent': 'com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)',
    };
    const c = cookie || hostCookies.get(targetUrl.host) || '';
    if (c) headers['Cookie'] = c;

    const req = client.request(targetUrl, {
      method: 'GET',
      headers,
      agent: targetUrl.protocol === 'https:' ? httpsAgent : httpAgent,
    }, (res) => {
      if (res.statusCode >= 400) {
        res.resume();
        return reject(new Error(`Upstream status ${res.statusCode}`));
      }
      const chunks = [];
      res.on('data', chunk => chunks.push(chunk));
      res.on('end', () => {
        const data = Buffer.concat(chunks);
        const contentType = res.headers['content-type'] || 'video/iso.segment';
        storeCachedSegment(targetUrlStr, contentType, data);
        resolve({ contentType, data });
      });
    });

    req.on('error', reject);
    req.setTimeout(15000, () => {
      req.destroy(new Error('Segment fetch timeout'));
    });
    req.end();
  }).finally(() => {
    inFlightSegments.delete(targetUrlStr);
  });

  inFlightSegments.set(targetUrlStr, p);
  return p;
}

function prefetchLookaheadSegments(url, cookie) {
  const nextUrls = computeNextDashSegmentUrls(url, 3);
  for (const nextUrl of nextUrls) {
    if (!getCachedSegment(nextUrl) && !inFlightSegments.has(nextUrl)) {
      fetchAndCacheSegment(nextUrl, cookie).catch(() => {});
    }
  }
}

async function warmupDashStream(dashUrlStr, cookie) {
  try {
    let targetUrl;
    try {
      targetUrl = new URL(dashUrlStr);
    } catch (e) { return; }

    const host = targetUrl.host;
    if (cookie) hostCookies.set(host, cookie);

    const headers = {
      'Referer': 'https://sportslive.wine',
      'Origin': 'https://sportslive.wine',
      'User-Agent': 'com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)',
    };
    const c = cookie || hostCookies.get(host) || '';
    if (c) headers['Cookie'] = c;

    const manifestRes = await new Promise((resolve, reject) => {
      const client = targetUrl.protocol === 'https:' ? https : http;
      const req = client.request(targetUrl, {
        method: 'GET',
        headers,
        agent: targetUrl.protocol === 'https:' ? httpsAgent : httpAgent,
      }, (res) => {
        const chunks = [];
        res.on('data', chunk => chunks.push(chunk));
        res.on('end', () => resolve({ statusCode: res.statusCode, body: Buffer.concat(chunks).toString('utf8') }));
      });
      req.on('error', reject);
      req.setTimeout(8000, () => req.destroy(new Error('Timeout')));
      req.end();
    });

    if (manifestRes.statusCode !== 200 || !manifestRes.body) return;

    const rewritten = manifestRes.body
      .replace(new RegExp(`https://${host}/`, 'g'), `http://127.0.0.1:${proxyPort}/https/${host}/`)
      .replace(new RegExp(`http://${host}/`, 'g'), `http://127.0.0.1:${proxyPort}/http/${host}/`)
      .replace(/codecs="hev1"/gi, 'codecs="hev1.1.6.L120.90"')
      .replace(/codecs='hev1'/gi, "codecs='hev1.1.6.L120.90'")
      .replace(/codecs="hvc1"/gi, 'codecs="hvc1.1.6.L120.90"')
      .replace(/codecs='hvc1'/gi, "codecs='hvc1.1.6.L120.90'");

    manifestCache.set(dashUrlStr, {
      rewritten,
      timestamp: Date.now()
    });

    const vidId = rewritten.includes('id="0"') ? '0' : (rewritten.includes('id="1"') ? '1' : '2');
    const baseDir = dashUrlStr.slice(0, dashUrlStr.lastIndexOf('/'));

    const warmupTargets = [
      `${baseDir}/init-stream${vidId}.m4s`,
      `${baseDir}/init-stream3.m4s`,
      `${baseDir}/chunk-stream${vidId}-00001.m4s`,
      `${baseDir}/chunk-stream3-00001.m4s`,
    ];

    for (const target of warmupTargets) {
      if (!getCachedSegment(target) && !inFlightSegments.has(target)) {
        fetchAndCacheSegment(target, cookie).catch(() => {});
      }
    }
  } catch (err) {}
}

function parseByteRange(rangeHeader, totalLength) {
  if (!rangeHeader || !totalLength) return null;
  const match = rangeHeader.trim().match(/^bytes=(\d+)-(\d*)$/);
  if (!match) return null;
  const start = parseInt(match[1], 10);
  if (isNaN(start) || start >= totalLength) return null;
  const end = match[2] ? Math.min(parseInt(match[2], 10), totalLength - 1) : totalLength - 1;
  if (start > end) return null;
  return { start, end };
}

function sendSegmentBuffer(res, buffer, contentType, rangeHeader) {
  if (rangeHeader) {
    const range = parseByteRange(rangeHeader, buffer.length);
    if (range) {
      const slice = buffer.subarray(range.start, range.end + 1);
      res.writeHead(206, {
        'Content-Type': contentType,
        'Content-Range': `bytes ${range.start}-${range.end}/${buffer.length}`,
        'Content-Length': slice.length,
        'Accept-Ranges': 'bytes',
        'Access-Control-Allow-Origin': '*',
        'Access-Control-Allow-Headers': '*',
        'Connection': 'keep-alive',
      });
      return res.end(slice);
    }
  }
  res.writeHead(200, {
    'Content-Type': contentType,
    'Content-Length': buffer.length,
    'Accept-Ranges': 'bytes',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': '*',
    'Connection': 'keep-alive',
  });
  res.end(buffer);
}

function requestWithRedirects(targetUrlStr, options, onResponse, onError, maxRedirects = 5) {
  let u;
  try {
    u = new URL(targetUrlStr);
  } catch (err) {
    if (onError) onError(err);
    return;
  }

  const client = u.protocol === 'https:' ? https : http;
  const agent = u.protocol === 'https:' ? httpsAgent : httpAgent;

  const req = client.request(u, {
    ...options,
    agent,
  }, (res) => {
    if ([301, 302, 303, 307, 308].includes(res.statusCode) && res.headers.location && maxRedirects > 0) {
      let nextUrlStr = res.headers.location;
      if (nextUrlStr.startsWith('/')) {
        nextUrlStr = `${u.protocol}//${u.host}${nextUrlStr}`;
      }
      res.resume();
      return requestWithRedirects(nextUrlStr, options, onResponse, onError, maxRedirects - 1);
    }
    if (onResponse) onResponse(res);
  });

  req.on('error', (err) => {
    if (onError) onError(err);
  });

  return req;
}

function startLocalStreamingProxy() {
  const server = http.createServer((req, res) => {
    let targetUrlStr = null;
    const parsed = new URL(req.url, `http://127.0.0.1:${proxyPort || 80}`);

    if (parsed.pathname.startsWith('/https/')) {
      targetUrlStr = 'https://' + parsed.pathname.slice('/https/'.length) + parsed.search;
    } else if (parsed.pathname.startsWith('/http/')) {
      targetUrlStr = 'http://' + parsed.pathname.slice('/http/'.length) + parsed.search;
    } else if (parsed.searchParams.get('url')) {
      targetUrlStr = parsed.searchParams.get('url');
      if (parsed.searchParams.get('cookie')) {
        try {
          const u = new URL(targetUrlStr);
          hostCookies.set(u.host, parsed.searchParams.get('cookie'));
        } catch (e) {}
      }
    }

    if (!targetUrlStr) {
      res.writeHead(400);
      return res.end('Invalid target');
    }

    let targetUrl;
    try {
      targetUrl = new URL(targetUrlStr);
    } catch (e) {
      res.writeHead(400);
      return res.end('Malformed URL');
    }

    const cookie = hostCookies.get(targetUrl.host) || '';

    // 1. DASH Manifest Cache Check
    const isManifest = targetUrl.pathname.endsWith('.mpd') || targetUrlStr.includes('.mpd');
    if (isManifest && req.method === 'GET') {
      const cached = manifestCache.get(targetUrlStr);
      if (cached) {
        const responseHeaders = {
          'Content-Type': 'application/dash+xml',
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Headers': '*',
          'Content-Length': Buffer.byteLength(cached.rewritten),
          'Connection': 'keep-alive',
        };
        res.writeHead(200, responseHeaders);
        return res.end(cached.rewritten);
      }
    }

    // 2. DASH Segment Cache Check & Instant Pass-Through Streaming
    const isM4s = targetUrl.pathname.endsWith('.m4s') || targetUrlStr.includes('.m4s');
    if (isM4s && req.method === 'GET') {
      prefetchLookaheadSegments(targetUrlStr, cookie);

      const cachedSeg = getCachedSegment(targetUrlStr);
      if (cachedSeg) {
        sendSegmentBuffer(res, cachedSeg.data, cachedSeg.contentType, req.headers['range']);
        return;
      }

      // Live pass-through stream: stream directly as packets arrive from upstream
      // This eliminates the 2-4 second VPN packet stall and starts video in <50ms
      const segHeaders = {
        'Referer': 'https://sportslive.wine',
        'Origin': 'https://sportslive.wine',
        'User-Agent': 'com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)',
      };
      if (cookie) segHeaders['Cookie'] = cookie;
      if (req.headers['range']) segHeaders['Range'] = req.headers['range'];

      const upstreamReq = requestWithRedirects(targetUrlStr, {
        method: 'GET',
        headers: segHeaders,
      }, (upstreamRes) => {
        const contentType = upstreamRes.headers['content-type'] || 'video/iso.segment';
        const responseHeaders = { ...upstreamRes.headers };
        responseHeaders['Access-Control-Allow-Origin'] = '*';
        responseHeaders['Access-Control-Allow-Headers'] = '*';
        delete responseHeaders['set-cookie'];

        res.writeHead(upstreamRes.statusCode, responseHeaders);

        const chunks = [];
        upstreamRes.on('data', (chunk) => {
          chunks.push(chunk);
          if (!res.writableEnded) {
            res.write(chunk);
          }
        });
        upstreamRes.on('end', () => {
          if (!res.writableEnded) {
            res.end();
          }
          if (upstreamRes.statusCode === 200 && chunks.length > 0) {
            storeCachedSegment(targetUrlStr, contentType, Buffer.concat(chunks));
          }
        });
      }, (err) => {
        if (!res.headersSent) res.writeHead(502);
        res.end(`Segment fetch failed: ${err.message}`);
      });

      req.on('close', () => {
        if (upstreamReq && !upstreamReq.destroyed) {
          upstreamReq.destroy();
        }
      });
      upstreamReq.end();
      return;
    }

    // 3. Fallback Stream Handler with Automatic Redirect Follower
    const headers = {
      'Referer': 'https://sportslive.wine',
      'Origin': 'https://sportslive.wine',
      'User-Agent': 'com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)',
    };

    if (cookie) {
      headers['Cookie'] = cookie;
    }
    if (req.headers['range']) {
      headers['Range'] = req.headers['range'];
    }

    const clientReq = requestWithRedirects(targetUrlStr, {
      method: req.method,
      headers: headers,
    }, (upstreamRes) => {
      const isUpstreamManifest = targetUrl.pathname.endsWith('.mpd') || 
                         (upstreamRes.headers['content-type'] && upstreamRes.headers['content-type'].includes('dash+xml'));

      if (isUpstreamManifest && upstreamRes.statusCode === 200) {
        let bodyChunks = [];
        upstreamRes.on('data', chunk => bodyChunks.push(chunk));
        upstreamRes.on('end', () => {
          const manifestStr = Buffer.concat(bodyChunks).toString('utf8');
          const host = targetUrl.host;
          const rewritten = manifestStr
            .replace(new RegExp(`https://${host}/`, 'g'), `http://127.0.0.1:${proxyPort}/https/${host}/`)
            .replace(new RegExp(`http://${host}/`, 'g'), `http://127.0.0.1:${proxyPort}/http/${host}/`)
            // Fix black-screen bug: Chromium MediaSource rejects bare 'hev1' but accepts 'hev1.1.6.L120.90'
            .replace(/codecs="hev1"/gi, 'codecs="hev1.1.6.L120.90"')
            .replace(/codecs='hev1'/gi, "codecs='hev1.1.6.L120.90'")
            .replace(/codecs="hvc1"/gi, 'codecs="hvc1.1.6.L120.90"')
            .replace(/codecs='hvc1'/gi, "codecs='hvc1.1.6.L120.90'");
          
          manifestCache.set(targetUrlStr, { rewritten, timestamp: Date.now() });

          const responseHeaders = {
            'Content-Type': 'application/dash+xml',
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Headers': '*',
            'Content-Length': Buffer.byteLength(rewritten),
            'Connection': 'keep-alive',
          };
          res.writeHead(200, responseHeaders);
          res.end(rewritten);
        });
        return;
      }

      const responseHeaders = { ...upstreamRes.headers };
      responseHeaders['Access-Control-Allow-Origin'] = '*';
      responseHeaders['Access-Control-Allow-Headers'] = '*';
      delete responseHeaders['set-cookie'];

      res.writeHead(upstreamRes.statusCode, responseHeaders);
      upstreamRes.pipe(res);
    }, (err) => {
      if (!res.headersSent) res.writeHead(502);
      res.end(err.message);
    });

    req.on('close', () => {
      if (clientReq && !clientReq.destroyed) {
        clientReq.destroy();
      }
    });
    clientReq.end();
  });

  server.listen(0, '127.0.0.1', () => {
    proxyPort = server.address().port;
  });
}

process.on('uncaughtException', (err) => {
  try {
    const logPath = path.join(app.getPath('userData'), 'crash.log');
    fs.appendFileSync(logPath, `[${new Date().toISOString()}] ${err.stack || err}\n`);
  } catch (e) {}
});

let mainWindow;

function createWindow() {
  mainWindow = new BrowserWindow({
    width: 1280,
    height: 800,
    minWidth: 900,
    minHeight: 600,
    backgroundColor: '#0b0f19',
    autoHideMenuBar: true,
    title: 'MovieBox Plus',
    webPreferences: {
      preload: path.join(__dirname, 'preload.cjs'),
      nodeIntegration: false,
      contextIsolation: true,
      webSecurity: false,
    },
  });

  // Inject required Referer header for AoneRoom CDN streams
  mainWindow.webContents.session.webRequest.onBeforeSendHeaders((details, callback) => {
    details.requestHeaders['Referer'] = 'https://sportslive.wine';
    details.requestHeaders['Origin'] = 'https://sportslive.wine';
    callback({ cancel: false, requestHeaders: details.requestHeaders });
  });

  // Dedicated downloads folder inside user's Downloads
  const downloadDir = path.join(app.getPath('downloads'), 'MovieBox_Plus');
  if (!fs.existsSync(downloadDir)) {
    try { fs.mkdirSync(downloadDir, { recursive: true }); } catch (e) {}
  }

  // Registry for completed downloads
  const metaFilePath = path.join(app.getPath('userData'), 'downloads_meta.json');
  function loadMeta() {
    try {
      if (fs.existsSync(metaFilePath)) {
        return JSON.parse(fs.readFileSync(metaFilePath, 'utf8'));
      }
    } catch (e) {}
    return [];
  }
  function saveMeta(data) {
    try {
      fs.writeFileSync(metaFilePath, JSON.stringify(data, null, 2), 'utf8');
    } catch (e) {}
  }

  // Active downloads map: id -> task object
  const downloadTasks = new Map();

  function findFfmpegBinary() {
    const candidates = [
      path.join(__dirname, 'bin', 'ffmpeg.exe'),
      path.join(process.resourcesPath || '', 'bin', 'ffmpeg.exe'),
      path.join(app.getAppPath(), 'electron', 'bin', 'ffmpeg.exe'),
      'C:\\Program Files\\BlueStacks_msi5\\ffmpeg.exe',
      'ffmpeg'
    ];
    for (const p of candidates) {
      try {
        if (p && fs.existsSync(p)) return p;
      } catch (e) {}
    }
    return null;
  }

  function parseDashManifestInfo(xmlStr, targetResolution = 1080) {
    let vidId = '0';
    let bestHeightDiff = Infinity;
    const repRegex = /<Representation\b[^>]*?id="([^"]+)"[^>]*?(?:height="(\d+)")?[^>]*?(?:width="(\d+)")?[^>]*?>/gi;
    let m;
    while ((m = repRegex.exec(xmlStr)) !== null) {
      const id = m[1];
      const h = m[2] ? parseInt(m[2], 10) : 0;
      if (h > 0) {
        const diff = Math.abs(h - targetResolution);
        if (diff < bestHeightDiff) {
          bestHeightDiff = diff;
          vidId = id;
        }
      }
    }

    let audId = '3';
    const audioSetMatch = xmlStr.match(/<AdaptationSet\b[^>]*?(?:contentType="audio"|mimeType="audio\/mp4")[^>]*>[\s\S]*?<Representation\b[^>]*?id="([^"]+)"/i);
    if (audioSetMatch && audioSetMatch[1]) {
      audId = audioSetMatch[1];
    }

    let totalSegments = 0;
    const sRegex = /<S\b[^>]*?(?:r="(\d+)")?[^>]*?\/>/gi;
    while ((m = sRegex.exec(xmlStr)) !== null) {
      const r = m[1] ? parseInt(m[1], 10) : 0;
      totalSegments += (r + 1);
    }

    if (totalSegments === 0) {
      const durMatch = xmlStr.match(/mediaPresentationDuration="PT(?:(\d+)H)?(?:(\d+)M)?(?:([\d.]+)S)?"/i);
      if (durMatch) {
        const h = parseInt(durMatch[1] || '0', 10);
        const min = parseInt(durMatch[2] || '0', 10);
        const sec = parseFloat(durMatch[3] || '0');
        const totalSec = h * 3600 + min * 60 + sec;
        totalSegments = Math.max(1, Math.ceil(totalSec / 2.5));
      }
    }

    if (totalSegments === 0) totalSegments = 600;

    return { vidId, audId, totalSegments };
  }

  function mergeVideoAudio(videoPath, audioPath, outputPath) {
    return new Promise((resolve) => {
      const ffmpegBin = findFfmpegBinary();
      if (ffmpegBin) {
        const proc = spawn(ffmpegBin, [
          '-y',
          '-i', videoPath,
          '-i', audioPath,
          '-c', 'copy',
          '-movflags', '+faststart',
          outputPath
        ], { stdio: 'ignore' });

        proc.on('close', (code) => {
          if (code === 0 && fs.existsSync(outputPath) && fs.statSync(outputPath).size > 1000) {
            try { fs.unlinkSync(videoPath); fs.unlinkSync(audioPath); } catch (e) {}
            return resolve(true);
          }
          fallbackVlc();
        });
        proc.on('error', () => fallbackVlc());
        return;
      }
      fallbackVlc();

      function fallbackVlc() {
        const vlcBin = findVlcBinary();
        if (vlcBin && fs.existsSync(vlcBin)) {
          const proc = spawn(vlcBin, [
            '-I', 'dummy',
            videoPath,
            `--input-slave=${audioPath}`,
            `:sout=#std{access=file,mux=mp4,dst="${outputPath}"}`,
            'vlc://quit'
          ], { stdio: 'ignore' });

          proc.on('close', () => {
            if (fs.existsSync(outputPath) && fs.statSync(outputPath).size > 1000) {
              try { fs.unlinkSync(videoPath); fs.unlinkSync(audioPath); } catch (e) {}
              return resolve(true);
            }
            fallbackRename();
          });
          proc.on('error', () => fallbackRename());
          return;
        }
        fallbackRename();
      }

      function fallbackRename() {
        try {
          if (fs.existsSync(videoPath)) {
            fs.renameSync(videoPath, outputPath);
            try { fs.unlinkSync(audioPath); } catch (e) {}
            return resolve(true);
          }
        } catch (e) {}
        resolve(false);
      }
    });
  }

  async function startDashDownload(downloadId, payload, resumeChunkIdx = 0) {
    const { url, filename, title, cover, cookie, sizeBytes, resolution } = payload;
    let safeFilename = (filename || 'video.mp4').replace(/[\\/:*?"<>|]/g, '_');
    if (!safeFilename.toLowerCase().endsWith('.mp4')) safeFilename += '.mp4';
    const savePath = path.join(downloadDir, safeFilename);

    const tempDir = path.join(downloadDir, `.dash_${downloadId}`);
    try { if (!fs.existsSync(tempDir)) fs.mkdirSync(tempDir, { recursive: true }); } catch (e) {}
    const tempVideoPath = path.join(tempDir, 'video.m4s');
    const tempAudioPath = path.join(tempDir, 'audio.m4s');

    let receivedBytes = 0;
    try {
      if (resumeChunkIdx > 0 && fs.existsSync(tempVideoPath)) {
        receivedBytes += fs.statSync(tempVideoPath).size;
      }
      if (resumeChunkIdx > 0 && fs.existsSync(tempAudioPath)) {
        receivedBytes += fs.statSync(tempAudioPath).size;
      }
    } catch (e) {}

    let totalBytes = sizeBytes || 0;
    let lastBytes = receivedBytes;
    let lastTime = Date.now();
    const startTime = payload.startTime || Date.now();

    const taskObj = {
      id: downloadId,
      url,
      filename: safeFilename,
      title: title || safeFilename,
      cover: cover || '',
      cookie: cookie || '',
      savePath,
      tempDir,
      tempVideoPath,
      tempAudioPath,
      isDash: true,
      sizeBytes,
      resolution,
      receivedBytes,
      totalBytes,
      speed: 0,
      isPaused: false,
      isCancelled: false,
      startTime,
      activeRequests: new Set(),
      currentChunk: resumeChunkIdx || 0,
      totalChunks: 0,
    };
    downloadTasks.set(downloadId, taskObj);

    const headers = {
      'Referer': 'https://sportslive.wine',
      'Origin': 'https://sportslive.wine',
      'User-Agent': 'com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)',
    };
    const c = cookie || hostCookies.get(new URL(url).host) || '';
    if (c) headers['Cookie'] = c;

    const sendUpdate = (state) => {
      const now = Date.now();
      const elapsed = (now - lastTime) / 1000;
      const speed = elapsed > 0 ? (receivedBytes - lastBytes) / elapsed : 0;
      lastBytes = receivedBytes;
      lastTime = now;

      taskObj.receivedBytes = receivedBytes;
      taskObj.totalBytes = totalBytes;
      taskObj.speed = Math.round(speed);
      taskObj.state = state;

      if (!mainWindow || mainWindow.isDestroyed()) return;
      mainWindow.webContents.send('download-update', {
        id: downloadId,
        title: taskObj.title,
        cover: taskObj.cover,
        filename: safeFilename,
        filePath: savePath,
        receivedBytes,
        totalBytes,
        speed: Math.round(speed),
        state: state,
        startTime
      });
    };

    sendUpdate('progressing');

    let manifestBody = '';
    try {
      manifestBody = await new Promise((resolve, reject) => {
        const client = url.startsWith('https:') ? https : http;
        const u = new URL(url);
        const req = client.request(u, {
          method: 'GET',
          headers,
          agent: u.protocol === 'https:' ? httpsAgent : httpAgent,
        }, (res) => {
          const chunks = [];
          res.on('data', chunk => chunks.push(chunk));
          res.on('end', () => resolve(Buffer.concat(chunks).toString('utf8')));
        });
        req.on('error', reject);
        taskObj.activeRequests.add(req);
        req.end();
      });
    } catch (err) {
      if (!taskObj.isCancelled) sendUpdate('interrupted');
      return;
    }

    if (!manifestBody || taskObj.isCancelled) return;

    const { vidId, audId, totalSegments } = parseDashManifestInfo(manifestBody, resolution || 1080);
    taskObj.totalChunks = totalSegments;
    const baseDir = url.slice(0, url.lastIndexOf('/'));

    if (totalBytes === 0) {
      totalBytes = totalSegments * 2600000;
      taskObj.totalBytes = totalBytes;
    }

    function fetchBuffer(targetUrlStr) {
      return new Promise((resolve, reject) => {
        if (taskObj.isCancelled || taskObj.isPaused) return reject(new Error('Aborted'));
        const u = new URL(targetUrlStr);
        const client = u.protocol === 'https:' ? https : http;
        const req = client.request(u, {
          method: 'GET',
          headers,
          agent: u.protocol === 'https:' ? httpsAgent : httpAgent,
        }, (res) => {
          if (res.statusCode >= 400) {
            res.resume();
            return reject(new Error(`HTTP ${res.statusCode}`));
          }
          const chunks = [];
          res.on('data', chunk => chunks.push(chunk));
          res.on('end', () => resolve(Buffer.concat(chunks)));
        });
        req.on('error', reject);
        taskObj.activeRequests.add(req);
        req.end();
      }).finally(() => {
        // request cleanup
      });
    }

    if (resumeChunkIdx === 0) {
      try {
        const [initVideo, initAudio] = await Promise.all([
          fetchBuffer(`${baseDir}/init-stream${vidId}.m4s`).catch(() => Buffer.alloc(0)),
          fetchBuffer(`${baseDir}/init-stream${audId}.m4s`).catch(() => Buffer.alloc(0)),
        ]);
        if (taskObj.isCancelled || taskObj.isPaused) return;
        if (initVideo.length > 0) fs.writeFileSync(tempVideoPath, initVideo);
        if (initAudio.length > 0) fs.writeFileSync(tempAudioPath, initAudio);
        receivedBytes += initVideo.length + initAudio.length;
      } catch (e) {
        if (!taskObj.isCancelled) sendUpdate('interrupted');
        return;
      }
    }

    const concurrency = 4;
    let nextChunkToFetch = resumeChunkIdx > 0 ? (resumeChunkIdx + 1) : 1;
    let nextChunkToWrite = nextChunkToFetch;
    const downloadedMap = new Map();

    const writeStreamVideo = fs.createWriteStream(tempVideoPath, { flags: 'a' });
    const writeStreamAudio = fs.createWriteStream(tempAudioPath, { flags: 'a' });
    taskObj.fileStream = writeStreamVideo;

    function flushReadyChunks() {
      while (downloadedMap.has(nextChunkToWrite)) {
        const data = downloadedMap.get(nextChunkToWrite);
        downloadedMap.delete(nextChunkToWrite);
        if (data.video && data.video.length > 0) writeStreamVideo.write(data.video);
        if (data.audio && data.audio.length > 0) writeStreamAudio.write(data.audio);
        nextChunkToWrite++;
        taskObj.currentChunk = nextChunkToWrite - 1;
      }
    }

    async function downloadWorker() {
      while (nextChunkToFetch <= totalSegments) {
        if (taskObj.isPaused || taskObj.isCancelled) break;
        const chunkIndex = nextChunkToFetch++;
        const pad = String(chunkIndex).padStart(5, '0');
        const vUrl = `${baseDir}/chunk-stream${vidId}-${pad}.m4s`;
        const aUrl = `${baseDir}/chunk-stream${audId}-${pad}.m4s`;

        try {
          const [vBuf, aBuf] = await Promise.all([
            fetchBuffer(vUrl).catch(() => Buffer.alloc(0)),
            fetchBuffer(aUrl).catch(() => Buffer.alloc(0)),
          ]);

          if (taskObj.isPaused || taskObj.isCancelled) break;

          downloadedMap.set(chunkIndex, { video: vBuf, audio: aBuf });
          receivedBytes += vBuf.length + aBuf.length;
          flushReadyChunks();

          if (Date.now() - lastTime > 600) {
            if (totalBytes > 0 && mainWindow && !mainWindow.isDestroyed()) {
              mainWindow.setProgressBar(Math.min(1.0, receivedBytes / totalBytes));
            }
            sendUpdate('progressing');
          }
        } catch (err) {
          if (!taskObj.isPaused && !taskObj.isCancelled) {
            await new Promise(r => setTimeout(r, 1000));
            nextChunkToFetch = Math.min(nextChunkToFetch, chunkIndex);
          }
        }
      }
    }

    const workers = [];
    for (let w = 0; w < concurrency; w++) {
      workers.push(downloadWorker());
    }
    await Promise.all(workers);

    flushReadyChunks();
    writeStreamVideo.end();
    writeStreamAudio.end();

    if (taskObj.isPaused) {
      sendUpdate('paused');
      return;
    }

    if (taskObj.isCancelled) {
      sendUpdate('cancelled');
      downloadTasks.delete(downloadId);
      try { fs.rmSync(tempDir, { recursive: true, force: true }); } catch (e) {}
      return;
    }

    // Mux video & audio streams with bundled ffmpeg / VLC
    sendUpdate('progressing');
    await mergeVideoAudio(tempVideoPath, tempAudioPath, savePath);
    try { fs.rmSync(tempDir, { recursive: true, force: true }); } catch (e) {}

    let finalSize = receivedBytes;
    try {
      if (fs.existsSync(savePath)) {
        finalSize = fs.statSync(savePath).size;
      }
    } catch (e) {}

    if (mainWindow && !mainWindow.isDestroyed()) {
      mainWindow.setProgressBar(-1);
    }

    const meta = loadMeta();
    const existingIdx = meta.findIndex(m => m.id === downloadId || m.filePath === savePath);
    const record = {
      id: downloadId,
      title: taskObj.title,
      cover: taskObj.cover,
      filename: safeFilename,
      filePath: savePath,
      totalBytes: finalSize,
      completedAt: Date.now(),
      state: 'completed'
    };
    if (existingIdx >= 0) meta[existingIdx] = record;
    else meta.unshift(record);
    saveMeta(meta);

    sendUpdate('completed');
    downloadTasks.delete(downloadId);
  }

  function startNativeDownload(downloadId, payload, resumeStartByte = 0) {
    const isDash = payload.isDash || (payload.url && (payload.url.includes('.mpd') || payload.url.includes('/dash/')));
    if (isDash) {
      return startDashDownload(downloadId, payload, resumeStartByte > 0 ? (payload.currentChunk || 0) : 0);
    }

    const { url, filename, title, cover, cookie } = payload;
    const safeFilename = (filename || 'video.mp4').replace(/[\\/:*?"<>|]/g, '_');
    const savePath = path.join(downloadDir, safeFilename);

    let receivedBytes = resumeStartByte;
    let totalBytes = 0;
    let lastBytes = receivedBytes;
    let lastTime = Date.now();
    const startTime = payload.startTime || Date.now();

    const taskObj = {
      id: downloadId,
      url,
      filename: safeFilename,
      title: title || safeFilename,
      cover: cover || '',
      cookie: cookie || '',
      savePath,
      req: null,
      fileStream: null,
      isPaused: false,
      isCancelled: false,
      startTime
    };
    downloadTasks.set(downloadId, taskObj);

    const headers = {
      'Referer': 'https://sportslive.wine',
      'Origin': 'https://sportslive.wine',
      'User-Agent': 'com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)',
    };
    const c = cookie || hostCookies.get(new URL(url).host) || '';
    if (c) headers['Cookie'] = c;
    if (resumeStartByte > 0) headers['Range'] = `bytes=${resumeStartByte}-`;

    const sendUpdate = (state) => {
      const now = Date.now();
      const elapsed = (now - lastTime) / 1000;
      const speed = elapsed > 0 ? (receivedBytes - lastBytes) / elapsed : 0;
      lastBytes = receivedBytes;
      lastTime = now;

      taskObj.receivedBytes = receivedBytes;
      taskObj.totalBytes = totalBytes;
      taskObj.speed = Math.round(speed);
      taskObj.state = state;

      if (!mainWindow || mainWindow.isDestroyed()) return;
      mainWindow.webContents.send('download-update', {
        id: downloadId,
        title: taskObj.title,
        cover: taskObj.cover,
        filename: safeFilename,
        filePath: savePath,
        receivedBytes,
        totalBytes,
        speed: Math.round(speed),
        state: state,
        startTime
      });
    };

    sendUpdate('progressing');

    const fileStream = fs.createWriteStream(savePath, { flags: resumeStartByte > 0 ? 'a' : 'w' });
    taskObj.fileStream = fileStream;

    const req = requestWithRedirects(url, {
      method: 'GET',
      headers,
    }, (res) => {
      if (taskObj.isCancelled) {
        res.destroy();
        fileStream.close();
        return;
      }

      if (res.statusCode !== 200 && res.statusCode !== 206) {
        sendUpdate('interrupted');
        fileStream.close();
        return;
      }

      const contentLength = parseInt(res.headers['content-length'] || '0', 10);
      totalBytes = contentLength > 0 ? (contentLength + resumeStartByte) : 0;

      res.on('data', (chunk) => {
        if (taskObj.isPaused || taskObj.isCancelled) return;
        receivedBytes += chunk.length;
        fileStream.write(chunk);

        if (Date.now() - lastTime > 600) {
          if (totalBytes > 0 && mainWindow && !mainWindow.isDestroyed()) {
            mainWindow.setProgressBar(receivedBytes / totalBytes);
          }
          sendUpdate('progressing');
        }
      });

      res.on('end', () => {
        fileStream.end(() => {
          if (taskObj.isPaused) {
            sendUpdate('paused');
          } else if (taskObj.isCancelled) {
            sendUpdate('cancelled');
            downloadTasks.delete(downloadId);
          } else {
            if (mainWindow && !mainWindow.isDestroyed()) {
              mainWindow.setProgressBar(-1);
            }
            const meta = loadMeta();
            const existingIdx = meta.findIndex(m => m.id === downloadId || m.filePath === savePath);
            const record = {
              id: downloadId,
              title: taskObj.title,
              cover: taskObj.cover,
              filename: safeFilename,
              filePath: savePath,
              totalBytes: receivedBytes,
              completedAt: Date.now(),
              state: 'completed'
            };
            if (existingIdx >= 0) meta[existingIdx] = record;
            else meta.unshift(record);
            saveMeta(meta);

            sendUpdate('completed');
            downloadTasks.delete(downloadId);
          }
        });
      });

      res.on('error', () => {
        fileStream.close();
        sendUpdate('interrupted');
      });
    }, () => {
      fileStream.close();
      sendUpdate('interrupted');
    });

    taskObj.req = req;
    req.end();
  }

  // IPC Handlers for Download Management
  ipcMain.handle('start-download', async (event, payload) => {
    const downloadId = `dl_${Date.now()}_${Math.floor(Math.random() * 1000)}`;
    startNativeDownload(downloadId, payload, 0);
    return { success: true, id: downloadId };
  });

  ipcMain.handle('pause-download', async (event, id) => {
    const task = downloadTasks.get(id);
    if (task && !task.isPaused) {
      task.isPaused = true;
      if (task.req) task.req.destroy();
      if (task.fileStream) task.fileStream.close();
      if (task.activeRequests) {
        for (const r of task.activeRequests) { try { r.destroy(); } catch (e) {} }
      }
      if (mainWindow && !mainWindow.isDestroyed()) {
        mainWindow.webContents.send('download-update', {
          id: task.id,
          title: task.title,
          cover: task.cover,
          filename: task.filename,
          filePath: task.savePath,
          state: 'paused'
        });
      }
      return { success: true };
    }
    return { success: false };
  });

  ipcMain.handle('resume-download', async (event, id) => {
    const task = downloadTasks.get(id);
    if (task && task.isPaused) {
      task.isPaused = false;
      if (task.isDash) {
        startDashDownload(task.id, task, task.currentChunk || 0);
      } else {
        let existingBytes = 0;
        try {
          if (fs.existsSync(task.savePath)) {
            existingBytes = fs.statSync(task.savePath).size;
          }
        } catch (e) {}
        startNativeDownload(task.id, task, existingBytes);
      }
      return { success: true };
    }
    return { success: false };
  });

  ipcMain.handle('cancel-download', async (event, id) => {
    const task = downloadTasks.get(id);
    if (task) {
      task.isCancelled = true;
      if (task.req) task.req.destroy();
      if (task.fileStream) task.fileStream.close();
      if (task.activeRequests) {
        for (const r of task.activeRequests) { try { r.destroy(); } catch (e) {} }
      }
      if (task.tempDir) {
        try { fs.rmSync(task.tempDir, { recursive: true, force: true }); } catch (e) {}
      }
      try {
        if (fs.existsSync(task.savePath)) fs.unlinkSync(task.savePath);
      } catch (e) {}
      downloadTasks.delete(id);
      if (mainWindow && !mainWindow.isDestroyed()) {
        mainWindow.webContents.send('download-update', {
          id: task.id,
          state: 'cancelled'
        });
        mainWindow.setProgressBar(-1);
      }
      return { success: true };
    }
    return { success: false };
  });

  ipcMain.handle('get-downloads', async () => {
    const meta = loadMeta();
    // Filter meta for files that actually exist
    const verified = meta.filter(m => {
      try {
        return m.filePath && fs.existsSync(m.filePath);
      } catch (e) {
        return false;
      }
    });
    if (verified.length !== meta.length) {
      saveMeta(verified);
    }

    const active = [];
    for (const [id, t] of downloadTasks.entries()) {
      active.push({
        id: t.id,
        title: t.title,
        cover: t.cover,
        filename: t.filename,
        filePath: t.savePath,
        receivedBytes: t.receivedBytes || 0,
        totalBytes: t.totalBytes || 0,
        speed: t.speed || 0,
        state: t.isPaused ? 'paused' : (t.state || 'progressing'),
        startTime: t.startTime
      });
    }

    return { completed: verified, active };
  });

  ipcMain.handle('delete-download', async (event, { id, filePath }) => {
    try {
      if (filePath && fs.existsSync(filePath)) {
        fs.unlinkSync(filePath);
      }
    } catch (e) {}

    const meta = loadMeta().filter(m => m.id !== id && m.filePath !== filePath);
    saveMeta(meta);
    return { success: true };
  });

  ipcMain.handle('open-download-folder', async (event, filePath) => {
    try {
      if (filePath && fs.existsSync(filePath)) {
        shell.showItemInFolder(filePath);
      } else {
        shell.openPath(downloadDir);
      }
      return { success: true };
    } catch (e) {
      return { success: false, error: e.message };
    }
  });

  const isDev = process.env.NODE_ENV === 'development';
  if (isDev) {
    mainWindow.loadURL('http://localhost:5173');
  } else {
    mainWindow.loadFile('dist/index.html').catch(err => {
      const url = require('url');
      mainWindow.loadURL(url.format({
        pathname: path.join(__dirname, '..', 'dist', 'index.html'),
        protocol: 'file:',
        slashes: true
      }));
    });
  }

  mainWindow.on('close', (e) => {
    try { fs.appendFileSync('C:\\Users\\milon\\Desktop\\JAILBREAK\\window_events.log', 'Window close event fired\n'); } catch (err) {}
  });
  mainWindow.on('closed', () => {
    try { fs.appendFileSync('C:\\Users\\milon\\Desktop\\JAILBREAK\\window_events.log', 'Window closed\n'); } catch (err) {}
  });
  mainWindow.webContents.on('render-process-gone', (event, details) => {
    try { fs.appendFileSync('C:\\Users\\milon\\Desktop\\JAILBREAK\\window_events.log', `Render process gone: ${JSON.stringify(details)}\n`); } catch (err) {}
  });

  mainWindow.webContents.on('did-fail-load', (event, errorCode, errorDescription) => {
    try {
      fs.appendFileSync('C:\\Users\\milon\\Desktop\\JAILBREAK\\load_error.log', `Failed to load: ${errorCode} ${errorDescription}\n`);
    } catch (e) {}
  });
}

function findVlcBinary() {
  // 1. Check if VLC is already installed on the system (never reinstall or overwrite existing)
  const systemPaths = [
    'C:\\Program Files\\VideoLAN\\VLC\\vlc.exe',
    'C:\\Program Files (x86)\\VideoLAN\\VLC\\vlc.exe',
    path.join(process.env.LOCALAPPDATA || '', 'Programs\\VLC\\vlc.exe'),
    path.join(process.env.PROGRAMFILES || 'C:\\Program Files', 'VideoLAN\\VLC\\vlc.exe'),
    path.join(process.env['PROGRAMFILES(X86)'] || 'C:\\Program Files (x86)', 'VideoLAN\\VLC\\vlc.exe'),
  ];
  for (const p of systemPaths) {
    if (fs.existsSync(p)) return p;
  }

  // 2. Check bundled portable VLC extracted from vlc-3.0.24-win64.exe (packaged app)
  if (process.resourcesPath) {
    const bundledPackaged = path.join(process.resourcesPath, 'vlc', 'vlc.exe');
    if (fs.existsSync(bundledPackaged)) return bundledPackaged;
  }

  // 3. Check bundled VLC in development / unpacked directory
  const localCandidates = [
    path.join(__dirname, 'vlc', 'vlc.exe'),
    path.join(__dirname, '..', 'electron', 'vlc', 'vlc.exe'),
    path.join(app.getAppPath(), 'electron', 'vlc', 'vlc.exe'),
    path.join(app.getAppPath(), 'resources', 'vlc', 'vlc.exe'),
  ];
  for (const p of localCandidates) {
    if (fs.existsSync(p)) return p;
  }

  return null;
}

function findPotPlayerBinary() {
  const candidates = [
    'C:\\Program Files\\DAUM\\PotPlayer\\PotPlayer64.exe',
    'C:\\Program Files\\DAUM\\PotPlayer\\PotPlayerMini64.exe',
    'C:\\Program Files (x86)\\DAUM\\PotPlayer\\PotPlayerMini.exe',
    'C:\\Program Files (x86)\\DAUM\\PotPlayer\\PotPlayer.exe',
    path.join(process.env.LOCALAPPDATA || '', 'Programs\\PotPlayer\\PotPlayer64.exe'),
    path.join(process.env.LOCALAPPDATA || '', 'Programs\\PotPlayer\\PotPlayerMini64.exe'),
    path.join(process.env.PROGRAMFILES || 'C:\\Program Files', 'DAUM\\PotPlayer\\PotPlayer64.exe'),
    path.join(process.env['PROGRAMFILES(X86)'] || 'C:\\Program Files (x86)', 'DAUM\\PotPlayer\\PotPlayerMini.exe'),
  ];
  for (const p of candidates) {
    if (fs.existsSync(p)) return p;
  }
  return null;
}

function launchExternalPlayer({ player = 'vlc', streamUrl, title, subtitleUrl, cookie }) {
  if (!streamUrl) return { success: false, error: 'No stream URL provided' };

  let finalUrl = streamUrl;
  const isDash = streamUrl.includes('.mpd') || streamUrl.includes('/dash/');

  if (cookie) {
    try {
      const u = new URL(streamUrl);
      hostCookies.set(u.host, cookie);
    } catch (e) {}
  }

  // Route DASH and protected CDN streams through the local streaming proxy so VLC never hits 403 Forbidden
  if (proxyPort && (isDash || cookie || streamUrl.includes('hakunaymatata') || streamUrl.includes('sbcdn') || streamUrl.includes('aoneroom'))) {
    try {
      const u = new URL(streamUrl);
      if (cookie) hostCookies.set(u.host, cookie);
      const proto = u.protocol === 'http:' ? 'http' : 'https';
      finalUrl = `http://127.0.0.1:${proxyPort}/${proto}/${u.host}${u.pathname}${u.search}`;
      if (isDash) {
        warmupDashStream(streamUrl, cookie);
      }
    } catch (e) {}
  }

  // 1. PotPlayer integration
  if (player === 'potplayer') {
    const potPath = findPotPlayerBinary();
    if (potPath) {
      const args = [finalUrl, '/current', '/play'];
      if (title) args.push(`/title="${title}"`);
      if (subtitleUrl) args.push(`/sub="${subtitleUrl}"`);
      const proc = spawn(potPath, args, { detached: true, stdio: 'ignore' });
      proc.unref();
      return { success: true, player: 'potplayer', path: potPath };
    }
    return {
      success: false,
      notInstalled: true,
      player: 'potplayer',
      downloadUrl: 'https://potplayer.daum.net/'
    };
  }

  // 2. VLC Media Player integration (Default)
  const vlcPath = findVlcBinary();
  if (!vlcPath) {
    return {
      success: false,
      notInstalled: true,
      player: 'vlc',
      downloadUrl: 'https://www.videolan.org/vlc/'
    };
  }

  // Use single-instance so next episode or subsequent playback replaces media in the existing window without opening duplicate windows
  const args = [
    '--one-instance',
    '--no-playlist-enqueue',
    '--network-caching=3000',
    '--file-caching=3000',
    '--clock-jitter=0',
    '--clock-synchro=0',
    '--http-reconnect',
    '--http-referrer=https://sportslive.wine',
    '--http-user-agent=com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)',
    '--no-video-title-show',
    '--no-lua',
    '--no-stats',
  ];
  if (isDash) {
    args.push('--adaptive-logic=predictive');
  }
  if (title) {
    args.push(`--meta-title=${title}`);
  }
  if (subtitleUrl) {
    args.push(`--sub-file=${subtitleUrl}`);
  }
  args.push(finalUrl);

  try {
    const vlcProcess = spawn(vlcPath, args, { detached: true, stdio: 'ignore' });
    vlcProcess.unref();
    return { success: true, player: 'vlc', path: vlcPath };
  } catch (err) {
    console.error('Failed to spawn VLC:', err);
    return {
      success: false,
      notInstalled: true,
      player: 'vlc',
      downloadUrl: 'https://www.videolan.org/vlc/',
      error: err.message
    };
  }
}

ipcMain.handle('check-players', () => {
  const vlc = findVlcBinary();
  const pot = findPotPlayerBinary();
  return {
    vlc: { available: fs.existsSync(vlc) || vlc === 'vlc', path: vlc },
    potplayer: { available: !!pot, path: pot }
  };
});

ipcMain.handle('check-vlc', () => {
  const binary = findVlcBinary();
  const exists = fs.existsSync(binary) || binary === 'vlc';
  return { available: exists, path: binary };
});

ipcMain.handle('get-proxy-url', async (event, { url, cookie }) => {
  if (!url) return '';
  if (cookie) {
    try {
      const u = new URL(url);
      hostCookies.set(u.host, cookie);
    } catch (e) {}
  }
  const isDash = url.includes('.mpd') || url.includes('/dash/');
  if (isDash) {
    warmupDashStream(url, cookie);
  }
  if (proxyPort) {
    try {
      const u = new URL(url);
      const proto = u.protocol === 'http:' ? 'http' : 'https';
      return `http://127.0.0.1:${proxyPort}/${proto}/${u.host}${u.pathname}${u.search}`;
    } catch (e) {}
  }
  return url;
});

// Unified external player launcher for Windows (Reliable proxying & 100% 403-free streaming)
ipcMain.handle('launch-player', async (event, payload) => {
  const playerChoice = payload?.player || 'vlc';
  let streamUrl = typeof payload === 'string' ? payload : payload?.url;
  const cookie = typeof payload === 'object' ? payload?.cookie : null;
  const title = typeof payload === 'object' ? payload?.title : null;
  const subtitleUrl = typeof payload === 'object' ? payload?.subtitleUrl : null;

  if (!streamUrl) {
    return { success: false, error: 'No stream URL provided' };
  }

  return launchExternalPlayer({ player: playerChoice, streamUrl, title, subtitleUrl, cookie });
});

ipcMain.handle('launch-vlc', async (event, payload) => {
  return launchExternalPlayer({ 
    player: 'vlc', 
    streamUrl: typeof payload === 'string' ? payload : payload?.url, 
    title: payload?.title, 
    subtitleUrl: payload?.subtitleUrl,
    cookie: payload?.cookie
  });
});

ipcMain.on('launch-vlc', (event, payload) => {
  let streamUrl = typeof payload === 'string' ? payload : payload?.url;
  const cookie = typeof payload === 'object' ? payload?.cookie : null;
  const title = typeof payload === 'object' ? payload?.title : null;
  const subtitleUrl = typeof payload === 'object' ? payload?.subtitleUrl : null;

  launchExternalPlayer({ player: 'vlc', streamUrl, title, subtitleUrl, cookie });
});

// IPC handler to initiate download
ipcMain.on('download-file', (event, fileUrl, filename) => {
  const downloadId = `dl_${Date.now()}_${Math.floor(Math.random() * 1000)}`;
  startNativeDownload(downloadId, { url: fileUrl, filename }, 0);
});

// -------------------------------------------------------------
// 4K HD Hub Multi-Provider Scraper & Direct Stream Resolver
// -------------------------------------------------------------
function rot13(str) {
  return str.replace(/[a-zA-Z]/g, function (c) {
    return String.fromCharCode((c <= 'Z' ? 90 : 122) >= (c = c.charCodeAt(0) + 13) ? c : c - 26);
  });
}

function fetchTextWithRedirects(urlStr, headers = {}) {
  return new Promise((resolve, reject) => {
    try {
      const u = new URL(urlStr);
      const client = u.protocol === 'https:' ? https : http;
      const reqHeaders = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36',
        ...headers
      };
      client.get(u, { headers: reqHeaders }, (res) => {
        if (res.statusCode >= 300 && res.statusCode < 400 && res.headers.location) {
          const loc = new URL(res.headers.location, u).toString();
          return resolve(fetchTextWithRedirects(loc, headers));
        }
        let data = '';
        res.on('data', chunk => data += chunk);
        res.on('end', () => resolve(data));
      }).on('error', reject);
    } catch (err) {
      reject(err);
    }
  });
}

function unpackGreenmotorsPayload(html) {
  const match = html.match(/s\(\s*['"]o['"]\s*,\s*['"]([^'"]+)['"]/);
  if (!match) return null;
  const payload = match[1];
  try {
    const s1 = Buffer.from(payload, 'base64').toString('utf8');
    const s2 = Buffer.from(s1, 'base64').toString('utf8');
    const s3 = rot13(s2);
    const s4 = Buffer.from(s3, 'base64').toString('utf8');
    const json = JSON.parse(s4);
    return Buffer.from(json.o, 'base64').toString('utf8');
  } catch (e) {
    return null;
  }
}

async function resolveHubCloudDirectStream(mirrorUrl) {
  try {
    let currentUrl = mirrorUrl;
    if (currentUrl.includes('greenmotors.') || currentUrl.includes('greenmountmotors.')) {
      const gmHtml = await fetchTextWithRedirects(currentUrl);
      const unpacked = unpackGreenmotorsPayload(gmHtml);
      if (unpacked) currentUrl = unpacked;
    }

    if (currentUrl.includes('hubcloud.') || currentUrl.includes('hubdrive.')) {
      const driveHtml = await fetchTextWithRedirects(currentUrl);
      const gamerMatch = driveHtml.match(/href=["'](https?:\/\/[^"']*(?:gamerxyt|hubcloud\.php)[^"']*)["']/i);
      if (gamerMatch) {
        const resolverHtml = await fetchTextWithRedirects(gamerMatch[1]);
        const links = [...resolverHtml.matchAll(/<a[^>]+href=["'](https?:\/\/[^"']+)["'][^>]*>([\s\S]*?)<\/a>/gi)];
        for (const l of links) {
          const href = l[1];
          const label = l[2].replace(/<[^>]+>/g, '').trim().toLowerCase();
          if (href.includes('.mkv') || href.includes('.mp4') || href.includes('r2.cloudflarestorage') || href.includes('pixeldrain') || href.includes('/drive/video/play') || label.includes('download') || label.includes('fast')) {
            return {
              url: href,
              label: l[2].replace(/<[^>]+>/g, '').trim(),
              direct: true
            };
          }
        }
      }
    }
    return { url: currentUrl, label: 'Direct Mirror', direct: true };
  } catch (e) {
    return { url: mirrorUrl, label: 'Mirror', direct: false };
  }
}

ipcMain.handle('fourkhd-search', async (event, query) => {
  try {
    const url = `https://4khdhub.one/?s=${encodeURIComponent(query)}`;
    const html = await fetchTextWithRedirects(url);
    const cardRegex = /<a[^>]+href=["']([^"']+)["'][^>]+class=["'][^"']*movie-card[^"']*["'][^>]*>([\s\S]*?)<\/a>|<a[^>]+class=["'][^"']*movie-card[^"']*["'][^>]+href=["']([^"']+)["'][^>]*>([\s\S]*?)<\/a>/gi;
    let match;
    const items = [];
    while ((match = cardRegex.exec(html)) !== null) {
      const href = match[1] || match[3];
      const inner = match[2] || match[4];
      if (!href) continue;
      const titleM = inner.match(/class=["'][^"']*movie-card-title[^"']*["'][^>]*>([^<]+)/i);
      const metaM = inner.match(/class=["'][^"']*movie-card-meta[^"']*["'][^>]*>([^<]+)/i);
      const imgM = inner.match(/src=["']([^"']+)["']/i);
      const title = titleM ? titleM[1].trim() : 'Unknown';
      const meta = metaM ? metaM[1].trim() : '';
      const year = (meta.match(/\b(19\d\d|20\d\d)\b/) || [''])[0];
      const isSeries = href.includes('-series-') || meta.toUpperCase().includes('S0');

      items.push({
        id: `fourkhd_${href.replace(/^\//, '').replace(/\/$/, '')}`,
        path: href.startsWith('/') ? href : `/${href}`,
        title,
        type: isSeries ? 'Series' : 'Movie',
        year: year || '2025',
        rating: '8.5',
        cover: imgM ? imgM[1] : '',
        provider: 'fourkhdhub'
      });
    }
    return items;
  } catch (err) {
    console.error('fourkhd-search error:', err);
    return [];
  }
});

ipcMain.handle('fourkhd-details', async (event, path) => {
  try {
    const cleanPath = path.startsWith('fourkhd_') ? `/${path.replace('fourkhd_', '')}/` : path;
    const url = cleanPath.startsWith('http') ? cleanPath : `https://4khdhub.one${cleanPath}`;
    const html = await fetchTextWithRedirects(url);
    const h1M = html.match(/<h1[^>]*>([\s\S]*?)<\/h1>/i);
    const descM = html.match(/class=["'][^"']*content-section[^"']*["'][\s\S]*?<p[^>]+class=["'][^"']*mt-4[^"']*["'][^>]*>([\s\S]*?)<\/p>/i);
    const imgM = html.match(/property=["']og:image["'][^>]+content=["']([^"']+)["']/i);
    const title = h1M ? h1M[1].replace(/<[^>]+>/g, '').trim() : 'Movie';
    const description = descM ? descM[1].replace(/<[^>]+>/g, '').trim() : '';
    const cover = imgM ? imgM[1] : '';
    const isSeries = cleanPath.includes('-series-');

    return {
      id: `fourkhd_${cleanPath.replace(/^\//, '').replace(/\/$/, '')}`,
      path: cleanPath,
      title,
      type: isSeries ? 'Series' : 'Movie',
      cover,
      synopsis: description,
      description,
      year: (title.match(/\b(19\d\d|20\d\d)\b/) || ['2025'])[0],
      provider: 'fourkhdhub',
      seasons: isSeries ? [{ season: 1, episodeCount: 12 }] : []
    };
  } catch (err) {
    return null;
  }
});

ipcMain.handle('fourkhd-streams', async (event, { path, season = 0, episode = 0 }) => {
  try {
    const cleanPath = path.startsWith('fourkhd_') ? `/${path.replace('fourkhd_', '')}/` : path;
    const url = cleanPath.startsWith('http') ? cleanPath : `https://4khdhub.one${cleanPath}`;
    const html = await fetchTextWithRedirects(url);

    const isSeason = season > 0;
    const itemRegex = isSeason 
      ? /<div[^>]+class=["'][^"']*episode-download-item[^"']*["'][^>]*>([\s\S]*?)<\/div>\s*<\/div>/gi
      : /<div[^>]+class=["'][^"']*download-item[^"']*["'][^>]*>([\s\S]*?)<\/div>\s*<\/div>/gi;

    let match;
    const sources = [];
    while ((match = itemRegex.exec(html)) !== null) {
      const block = match[1];
      const titleM = block.match(/class=["'][^"']*(?:file-title|episode-file-title)[^"']*["'][^>]*>([\s\S]*?)<\/h[0-9]>/i);
      const sizeM = block.match(/class=["'][^"']*(?:badge-size|badge)[^"']*["'][^>]*>([\s\S]*?)<\/span>/i);
      const linkMatches = [...block.matchAll(/<a[^>]+href=["']([^"']+)["'][^>]*>([\s\S]*?)<\/a>/gi)];

      const rawTitle = titleM ? titleM[1].replace(/<[^>]+>/g, '').trim() : '';
      const size = sizeM ? sizeM[1].replace(/<[^>]+>/g, '').trim() : '';
      const mirrors = linkMatches.map(m => ({
        label: m[2].replace(/<[^>]+>/g, '').trim(),
        url: m[1]
      })).filter(m => m.url && !m.url.includes('logout'));

      if (mirrors.length > 0) {
        const lower = (rawTitle + ' ' + size).toLowerCase();
        let res = 1080;
        let badge = '1080p';
        if (lower.includes('2160') || lower.includes('4k') || lower.includes('uhd')) {
          res = 2160;
          badge = '4K';
        } else if (lower.includes('720')) {
          res = 720;
          badge = '720p';
        } else if (lower.includes('480')) {
          res = 480;
          badge = '480p';
        }

        let codec = 'HEVC';
        if (lower.includes('av1')) codec = 'AV1';
        else if (lower.includes('h.264') || lower.includes('x264')) codec = 'H.264';

        sources.push({
          id: `fourkhd_stream_${sources.length}`,
          label: `${badge} (${size ? `${size} • ` : ''}${codec} 4KHDHub)`,
          resolution: res,
          badge,
          size,
          codec,
          source: '4K HD Hub',
          release: rawTitle || `4K HD Stream ${badge}`,
          mirrors,
          primaryMirror: mirrors[0].url,
          url: mirrors[0].url,
          direct: false
        });
      }
    }
    return sources;
  } catch (err) {
    console.error('fourkhd-streams error:', err);
    return [];
  }
});

ipcMain.handle('resolve-mirror', async (event, mirrorUrl) => {
  return await resolveHubCloudDirectStream(mirrorUrl);
});

app.whenReady().then(() => {
  startLocalStreamingProxy();
  createWindow();

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) createWindow();
  });
});

app.on('window-all-closed', () => {
  if (process.platform !== 'darwin') app.quit();
});
