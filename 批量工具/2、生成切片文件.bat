@echo off
cd /d "%~dp0"
for /f "delims=" %%a in ('dir /b/a-d/s *.mp4') do (
     set "_p=%%~dpa"
     set "_n=%%~na"
     set "_fn=%%~nxa"
     setlocal enabledelayedexpansion
     echo,cd /d "%%~dp0">"!_p!!_n!.bat"
     echo,D:\ffmpeg\bin\ffmpeg.exe -i "!_fn!" -hls_time 1 -hls_list_size 0 -c:v libx264 -c:a aac -strict -2 -f hls "!_n!.m3u8">>"!_p!!_n!.bat"
     echo,exit>>"!_p!!_n!.bat"
     endlocal
)
