# MovieBox Plus (GUI for Windows & Android)

A premium, ultra-fast, modern streaming client for **Windows (EXE)** and **Android (APK)** connected to the reverse-engineered MovieBox / AoneRoom API ecosystem.

![MovieBox Banner](https://pbcdn.aoneroom.com/image/2025/11/03/ad11c13f59155eea36f7d5b1cebde212.jpg)

---

## 🌟 Key Features

1. **Instant Search as You Type (with Poster Previews)**:
   - Type any letter (e.g. `F`) to immediately view instant autocomplete cards with **high-resolution poster thumbnails, release year, IMDB rating, and Movie/Series badges**.
   - Press **Enter** for a comprehensive full-page catalog search.

2. **60–120 FPS Fluid Interface**:
   - Built with **React 18 + Tailwind CSS** with hardware-accelerated transforms (`translateZ(0)`).
   - Cinematic hero banner, responsive 6-column media grid, and instant filtering (All, Movies, TV Series).

3. **High-Speed Zero-Buffering Player**:
   - Integrated HTML5 / HLS.js player with resolution selector (`4K`, `1080p`, `720p`, `480p`, `Auto`).
   - Episode picker for TV shows (Season 1, Season 2, etc.).
   - Multi-language subtitle tracks selector.
   - Auto-resume timestamp memory saved per title/episode.

4. **External Media Player Bridge**:
   - One-click launch in **VLC Media Player**, `mpv`, or default system player with custom `Referer: https://sportslive.wine` headers injected.

5. **Automated GitHub Updates**:
   - On startup, the application checks GitHub Releases for new updates.
   - Whenever an update is pushed to GitHub, users receive a one-click notification to download the latest `.exe` or `.apk`.

---

## 🚀 Getting Started

### Prerequisites
- [Node.js](https://nodejs.org/) (v18 or higher)
- [VLC Media Player](https://www.videolan.org/vlc/) (Optional, for external playback)

### 1. Run in Development Mode
```bash
cd moviebox-gui
npm install
npm run electron:dev
```

### 2. Build Windows Executable (.exe)
```bash
npm run electron:build
```
The compiled Windows `.exe` will be located in:
`release/MovieBox Plus.exe` (or `release/win-unpacked/MovieBox Plus.exe`).

### 3. Build Android APK
You can build the Android APK locally using Android Studio / Gradle:
```bash
cd android
./gradlew assembleRelease
```
Or push to GitHub with a version tag (e.g. `git tag v1.0.1 && git push origin v1.0.1`), and the included **GitHub Actions workflow (`.github/workflows/build.yml`)** will automatically compile and release both the Windows `.exe` and the Android `.apk`.

---

## 🔐 API Protocol & Cryptography

The app uses the verified **HMAC-MD5** cryptographic signature protocol from `MovieBox-Tui`:
- **Secret Key**: 30-byte cryptographic secret (`\xef\xa8...`).
- **Signature**: `x-tr-signature: {ts}|2|{base64(hmac_md5(canonical_string))}`.
- **Client Token**: `x-client-token: {ts},{md5(reversed_ts)}`.
- **Visitor Auth**: Ephemeral JWT session acquired from `/wefeed-mobile-bff/user-api/visitor-login`.
- **Failover Pool**: Automatic multi-host failover across `api6`, `api5`, `api4`, and `api3.aoneroom.com`.
