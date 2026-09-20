@echo off
setlocal
title MyMusic - Build EXE

echo.
echo ========================================
echo        MyMusic - Windows Build
echo ========================================
echo.

where node >nul 2>nul
if errorlevel 1 (
    echo Node.js is not installed.
    echo Install Node.js LTS from https://nodejs.org/
    echo.
    pause
    exit /b 1
)

echo Installing dependencies...
call npm install
if errorlevel 1 (
    echo.
    echo npm install failed.
    pause
    exit /b 1
)

echo.
echo Building MyMusic.exe...
call npm run build
if errorlevel 1 (
    echo.
    echo Build failed.
    pause
    exit /b 1
)

echo.
echo ========================================
echo Build complete!
echo.
echo EXE:
echo %CD%\dist\MyMusic.exe
echo ========================================
echo.
pause
