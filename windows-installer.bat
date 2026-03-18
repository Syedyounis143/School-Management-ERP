@echo off
REM School Management System - Windows Installer
REM This script installs and runs the application

setlocal enabledelayedexpansion

echo.
echo ============================================
echo School Management System - Windows Installer
echo ============================================
echo.

REM Check if Node.js is installed
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo Node.js is not installed. Installing...
    powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri 'https://nodejs.org/dist/v20.11.0/node-v20.11.0-x64.msi' -OutFile 'node-installer.msi'; Start-Process 'node-installer.msi' -Wait; del node-installer.msi}"
    echo Node.js installed successfully.
) else (
    echo Node.js is already installed.
)

REM Get the directory where this script is located
set "INSTALL_DIR=%~dp0"
cd /d "%INSTALL_DIR%"

echo.
echo Installing dependencies...
call npm install --legacy-peer-deps

if %errorlevel% neq 0 (
    echo Error: Failed to install dependencies
    pause
    exit /b 1
)

echo.
echo Building application...
call npm run build

if %errorlevel% neq 0 (
    echo Error: Failed to build application
    pause
    exit /b 1
)

echo.
echo Creating desktop shortcut...
powershell -Command "& {$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut([Environment]::GetFolderPath('Desktop') + '\School Management System.lnk'); $Shortcut.TargetPath = 'cmd.exe'; $Shortcut.Arguments = '/c cd /d \"%INSTALL_DIR%\" && npm start'; $Shortcut.WorkingDirectory = '%INSTALL_DIR%'; $Shortcut.IconLocation = '%INSTALL_DIR%\client\public\favicon.ico'; $Shortcut.Save()}"

echo.
echo Installation complete!
echo.
echo Starting application...
timeout /t 3

REM Start the application
cd /d "%INSTALL_DIR%"
start http://localhost:3000
call npm start

pause
