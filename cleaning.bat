@echo off
setlocal enabledelayedexpansion

:: --- Auto elevate to admin ---
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrator privileges...
    "%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

:: --- Kill browsers ---
taskkill /f /im chrome.exe >nul 2>&1
taskkill /f /im msedge.exe >nul 2>&1
taskkill /f /im brave.exe >nul 2>&1

echo =========================
echo   SMART CLEANUP START
echo =========================

:: --- Clean user temp ---
echo Cleaning user temp...
del /q /f /s "%TEMP%\*" 2>nul

:: --- Clean Windows temp ---
echo Cleaning Windows temp...
del /q /f /s "C:\Windows\Temp\*" 2>nul

:: --- Clean Chromium browser cache ---
echo Cleaning browser cache...

set browsers[0]=Google\Chrome
set browsers[1]=Microsoft\Edge
set browsers[2]=BraveSoftware\Brave-Browser

for /L %%i in (0,1,2) do (
    set "path=!browsers[%%i]!"
    set "base=%LOCALAPPDATA%\!path!\User Data"

    if exist "!base!" (
        echo Found !path!
        for /d %%p in ("!base!\*") do (
            if exist "%%p\Cache" (
                echo Cleaning cache in %%p
                del /q /f /s "%%p\Cache\*" 2>nul
            )
        )
    )
)

:: --- Always clean Prefetch ---
echo Cleaning Prefetch...
if exist "C:\Windows\Prefetch\" (
    del /q /f /s "C:\Windows\Prefetch\*" 2>nul
)

echo =========================
echo   CLEANUP COMPLETE
echo =========================

pause
endlocal
