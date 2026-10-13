@echo off
title Upload MovieBox Plus to GitHub
cd /d "%~dp0"
cls
echo =======================================================
echo     MovieBox Plus - One-Click GitHub Sync & APK Build
echo =======================================================
echo.
echo Current GitHub Account: raihanxyt01-spec
echo Default Repository:     moviebox-plus
echo.
echo Press ENTER to push to: https://github.com/raihanxyt01-spec/moviebox-plus.git
echo (Or paste your custom repository URL and press ENTER):
set /p REPO_URL="Repo URL [Default: https://github.com/raihanxyt01-spec/moviebox-plus.git]: "

if "%REPO_URL%"=="" (
    set REPO_URL=https://github.com/raihanxyt01-spec/moviebox-plus.git
)

echo.
echo [1/4] Ensuring git safe directory...
.\tools\git\cmd\git.exe config --global --add safe.directory "%~dp0" >nul 2>&1

echo [2/4] Setting remote origin to %REPO_URL%...
.\tools\git\cmd\git.exe remote remove origin >nul 2>&1
.\tools\git\cmd\git.exe remote add origin %REPO_URL%

echo [3/4] Ensuring main branch...
.\tools\git\cmd\git.exe branch -M main

echo [4/4] Pushing project to GitHub...
echo -------------------------------------------------------
echo NOTE: If a GitHub sign-in window appears, please click 
echo       'Sign in with your browser' to authenticate.
echo -------------------------------------------------------
echo.
.\tools\git\cmd\git.exe push -u origin main --force

if %ERRORLEVEL% equ 0 (
    echo.
    echo =======================================================
    echo  [SUCCESS] All files uploaded successfully to GitHub!
    echo =======================================================
    echo.
    echo GitHub Actions has now started building your Android APK!
    echo.
    echo 1. Open your browser to:
    echo    https://github.com/raihanxyt01-spec/moviebox-plus/actions
    echo.
    echo 2. Watch "Build MovieBox+ Android APK and Windows Release" run.
    echo 3. When finished (green checkmark), click it and scroll down
    echo    to "Artifacts" to download your:
    echo    - MovieBox-Plus-Android-APK (app-debug.apk)
    echo    - MovieBox-Plus-Windows-Release (MovieBox Plus.exe)
    echo.
) else (
    echo.
    echo [!] Push failed or cancelled.
    echo If you haven't created the repository on GitHub yet:
    echo 1. Go to https://github.com/new
    echo 2. Repository name: moviebox-plus
    echo 3. Click 'Create repository'
    echo 4. Run this script again!
    echo.
)
pause
