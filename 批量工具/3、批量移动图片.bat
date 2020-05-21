@echo off 
for /f "tokens=*" %%i in ('dir /b /a-d *.png') do ( 
md "%%~ni">nul
move "%%i" "%%~ni\%%i">nul
) 
Pause