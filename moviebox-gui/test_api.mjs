import CryptoJS from 'crypto-js';

const HOST_POOL = ['https://api6.aoneroom.com'];
const SECRET_BYTES = [
  0xef, 0xa8, 0x91, 0x97, 0x4e, 0xec, 0xd3, 0x14,
  0x8d, 0xf6, 0x3a, 0xa6, 0x11, 0x60, 0x2d, 0xef,
  0xd1, 0x01, 0x25, 0x9b, 0xa5, 0x21, 0x02, 0x2c,
  0x57, 0xae, 0x05, 0x66, 0xbd, 0x8e
];

function secretToWordArray(bytes) {
  const words = [];
  for (let i = 0; i < bytes.length; i++) words[i >>> 2] |= (bytes[i] & 0xff) << (24 - (i % 4) * 8);
  return CryptoJS.lib.WordArray.create(words, bytes.length);
}
const SECRET_WORD_ARRAY = secretToWordArray(SECRET_BYTES);

function sortCanonicalUrl(urlPath) {
  if (!urlPath || !urlPath.includes('?')) return urlPath;
  const [pathPart, queryPart] = urlPath.split('?');
  if (!queryPart) return pathPart;
  const searchParams = new URLSearchParams(queryPart);
  const sortedEntries = [...searchParams.entries()].sort((a, b) => a[0].localeCompare(b[0]));
  const sortedQuery = sortedEntries.map(([k, v]) => `${k}=${v}`).join('&');
  return sortedQuery ? `${pathPart}?${sortedQuery}` : pathPart;
}

function buildSignedHeaders(method, urlPath, bodyStr, token) {
  const ts = Date.now();
  const tsStr = ts.toString();
  const revTs = tsStr.split('').reverse().join('');
  const clientToken = `${tsStr},${CryptoJS.MD5(revTs).toString(CryptoJS.enc.Hex)}`;

  const canonicalPath = sortCanonicalUrl(urlPath);
  const bodyLen = bodyStr ? new TextEncoder().encode(bodyStr).length.toString() : '';
  const bodyHash = bodyStr ? CryptoJS.MD5(bodyStr.slice(0, 102400)).toString(CryptoJS.enc.Hex) : '';

  const canonical = `${method.toUpperCase()}\napplication/json\napplication/json\n${bodyLen}\n${ts}\n${bodyHash}\n${canonicalPath}`;
  const hmacSig = CryptoJS.HmacMD5(canonical, SECRET_WORD_ARRAY);
  const sigBase64 = CryptoJS.enc.Base64.stringify(hmacSig);
  const signature = `${ts}|2|${sigBase64}`;

  const clientInfo = JSON.stringify({
    package_name: 'com.community.oneroom',
    version_name: '4.0.01.0813.03',
    version_code: 50020120,
    os: 'android',
    os_version: '12',
    install_ch: 'ps',
    device_id: '1234567890abcdef1234567890abcdef',
    install_store: 'ps',
    gaid: '12345678-1234-1234-1234-1234567890ab',
    brand: 'Redmi',
    model: '2201117TY',
    system_language: 'en',
    net: 'NETWORK_WIFI',
    region: 'US',
    timezone: 'Asia/Kolkata',
    sp_code: '40401',
    'X-Play-Mode': '2'
  });

  const headers = {
    'User-Agent': 'com.community.oneroom/50020120 (Linux; U; Android 12; en_US; Redmi; Build/S1B.220414.015; Cronet/135.0.7012.3)',
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'x-client-token': clientToken,
    'x-tr-signature': signature,
    'x-client-info': clientInfo,
    'x-client-status': '0',
    'x-forwarded-for': '104.28.19.45',
  };
  if (token) headers['Authorization'] = `Bearer ${token}`;
  return headers;
}

async function run() {
  const loginPath = '/wefeed-mobile-bff/user-api/visitor-login';
  const loginHeaders = buildSignedHeaders('POST', loginPath, '{}', null);
  const loginRes = await fetch(`${HOST_POOL[0]}${loginPath}`, { method: 'POST', headers: loginHeaders, body: '{}' });
  const loginData = await loginRes.json();
  const token = loginData.data?.token || loginData.token;

  // Let's test search for "action"
  const searchPath = '/wefeed-mobile-bff/subject-api/search/v2';
  const payload = JSON.stringify({ keyword: 'action', page: 1, perPage: 18, tabId: 'MovieTV', subjectType: 0 });
  const searchHeaders = buildSignedHeaders('POST', searchPath, payload, token);
  const searchRes = await fetch(`${HOST_POOL[0]}${searchPath}`, { method: 'POST', headers: searchHeaders, body: payload });
  const searchData = await searchRes.json();

  if (searchData.data?.results?.[0]?.subjects) {
    searchData.data.results[0].subjects.forEach((s, idx) => {
      console.log(`[${idx}] "${s.title}" (${s.subjectType === 2 ? 'Series' : 'Movie'}) Genre: "${s.genre}" Year: "${s.releaseDate || s.year}"`);
    });
  }

  // Let's also check if there is an explore / genre endpoint!
  // e.g. /wefeed-mobile-bff/subject-api/filter or /wefeed-mobile-bff/subject-api/category
  for (const ep of [
    '/wefeed-mobile-bff/subject-api/filter',
    '/wefeed-mobile-bff/subject-api/category',
    '/wefeed-mobile-bff/subject-api/list',
    '/wefeed-mobile-bff/subject-api/channel',
    '/wefeed-mobile-bff/subject-api/tag'
  ]) {
    try {
      const epHeaders = buildSignedHeaders('GET', ep, null, token);
      const res = await fetch(`${HOST_POOL[0]}${ep}`, { method: 'GET', headers: epHeaders });
      console.log(`Testing ${ep}: status = ${res.status}`);
      if (res.status === 200) {
        const d = await res.json();
        console.log(`   data:`, JSON.stringify(d).slice(0, 150));
      }
    } catch (e) {}
  }
}

run().catch(console.error);
