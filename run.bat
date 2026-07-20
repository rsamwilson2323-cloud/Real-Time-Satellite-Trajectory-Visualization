@echo off
title Real-Time Satellite Trajectory Visualization

cd /d "%~dp0"

echo ============================================
echo   Real-Time Satellite Trajectory Visualization
echo ============================================
echo.

:: Check Node.js
where node >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Node.js is not installed.
    pause
    exit /b
)

:: Check npm
where npm >nul 2>&1
if errorlevel 1 (
    echo [ERROR] npm is not installed.
    pause
    exit /b
)

:: Install dependencies if needed
if not exist "node_modules" (
    echo Installing dependencies...
    npm install
    if errorlevel 1 (
        echo.
        echo Failed to install dependencies.
        pause
        exit /b
    )
)

echo.
echo Starting Vite Development Server...
echo.

call .\node_modules\.bin\vite.cmd

echo.
pause