@echo off
echo Starting MovieBox Plus...
if exist "%~dp0MovieBox_Plus.exe" (
  start "" "%~dp0MovieBox_Plus.exe"
) else if exist "%~dp0MovieBox_Plus_App\MovieBox Plus.exe" (
  start "" "%~dp0MovieBox_Plus_App\MovieBox Plus.exe"
)
exit
