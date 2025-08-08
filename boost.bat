@echo off
title 🧹 Boost Windows - Cleanup Script
color 0A

echo Running as Administrator...
:: Request admin privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Please run this script as Administrator.
    pause
    exit
)

echo.
echo 🚀 Boosting system performance...
timeout /t 1 >nul

:: 1. Clear Temp Files
echo 🧊 Clearing Temp files...
del /s /f /q "%temp%\*"
del /s /f /q "C:\Windows\Temp\*"
rd /s /q "%temp%"
md "%temp%"

:: 2. Clear Prefetch Files
echo ⚙️  Clearing Prefetch...
del /s /f /q C:\Windows\Prefetch\*

:: 3. Clear DNS Cache
echo 🌐 Flushing DNS...
ipconfig /flushdns

:: 4. Empty Recycle Bin (silent)
echo 🗑️  Emptying Recycle Bin...
PowerShell -Command "Clear-RecycleBin -Force"

:: 5. Empty clipboard
echo 📋 Clearing Clipboard...
echo off | clip

:: 6. Kill background junk (optional)
echo 🔪 Killing background apps like Cortana, OneDrive, Xbox Game Bar...
taskkill /f /im SearchUI.exe >nul 2>&1
taskkill /f /im OneDrive.exe >nul 2>&1
taskkill /f /im GameBar.exe >nul 2>&1


echo.
echo ✅ All done! Your system is cleaned and boosted.
pause
