::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQIfOA9dQQ2YOSuICbcQ5/Cb
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBVTWR2HAE+1EbsQ5+n//NaIslkUWeslfZ3U2LiBOKBeqkvjYI8o2GhVmscDFFVdZhfL
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:: Kiểm tra xem script có được chạy với quyền Administrator không
:: Nếu không, yêu cầu người dùng mở lại với quyền Administrator
NET SESSION >nul 2>&1
if %errorlevel% neq 0 (
    echo ================================================================
    echo You are not running this script as Administrator.
    echo Please right-click the script and select "Run as Administrator".
    echo ================================================================
    pause
    exit
)

title Optimize Roblox - Nguyen Roblox TV
color 0A

:menu
cls
echo **********************************************************************
echo *                                                                    *
echo *               OPTIMIZE ROBLOX - NGUYEN ROBLOX TV                   *
echo *                                                                    *
echo *                   @nguyenrobloxtv on YouTube                       *
echo *                                                                    *
echo **********************************************************************
echo.
echo [1] Bloxstrap Things (Download Bloxstrap, FastFlag)
echo [2] Clear Temporary Files
echo [3] Force Stop Roblox
echo [4] Change DNS (Google DNS, Cloudflare DNS, OpenDNS)
echo [5] Optimize Network
echo [6] Create Restore Point
echo [7] Set Roblox to High Performance (Graphics Settings)
echo [0] Exit
echo.
set /p choice="Choose an option: "

if "%choice%"=="1" goto menu2
if "%choice%"=="2" goto cleartemp
if "%choice%"=="3" goto stoproblox
if "%choice%"=="4" goto changedns
if "%choice%"=="5" goto optimizenetwork
if "%choice%"=="6" goto createRestorePoint
if "%choice%"=="7" goto sethighperformance
if "%choice%"=="0" exit
goto menu

:menu2
cls
echo **********************************************************************
echo *                       Bloxstrap Things                           *
echo **********************************************************************
echo [1] Download Bloxstrap
echo [2] Low Quality Flag (How To Boost FPS And Reduce Ping in Roblox (2025))
echo.
echo [0] Back to Main Menu
echo.
set /p choice="Choose an option: "

if "%choice%"=="1" goto bloxstrap
if "%choice%"=="2" goto lowqualityflag
if "%choice%"=="0" goto menu
goto menu2

:bloxstrap
start https://bloxstraplabs.com/
goto menu2

:lowqualityflag
cls
echo Downloading low quality flag for Roblox optimization...
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/lowqualityflag.txt

:: Kiểm tra thư mục Desktop và tạo nếu không có
set desktopPath=%USERPROFILE%\Desktop\lowqualityflag.txt
if not exist "%USERPROFILE%\Desktop" (
    echo Desktop folder not found! Creating Desktop folder...
    mkdir "%USERPROFILE%\Desktop"
)

:: Tải file vào Desktop
powershell -Command "Invoke-WebRequest -Uri '%downloadUrl%' -OutFile '%desktopPath%'"
echo File downloaded to Desktop: %desktopPath%

:: Mở thư mục Desktop
start %USERPROFILE%\Desktop
pause
goto menu2

:cleartemp
echo Clearing temporary files...
del /q /f /s %temp%\*
echo Temporary files cleared.
pause
goto menu

:stoproblox
echo Force stopping Roblox...
taskkill /f /im RobloxPlayerBeta.exe
pause
goto menu

:changedns
cls
echo **********************************************************************
echo *                       Change DNS                                 *
echo **********************************************************************
echo [1] Set DNS to Google DNS (8.8.8.8, 8.8.4.4)
echo [2] Set DNS to Cloudflare DNS (1.1.1.1, 1.0.0.1)
echo [3] Set DNS to OpenDNS (208.67.222.222, 208.67.220.220)
echo [0] Back to Main Menu
echo.
set /p dnschoice="Choose an option: "

if "%dnschoice%"=="1" goto googledns
if "%dnschoice%"=="2" goto cloudflare
if "%dnschoice%"=="3" goto opendns
if "%dnschoice%"=="0" goto menu
goto changedns

:googledns
cls
echo Setting DNS to Google DNS...
netsh interface ip set dns name="Ethernet" static 8.8.8.8
netsh interface ip add dns name="Ethernet" 8.8.4.4 index=2
echo DNS set to Google DNS (8.8.8.8, 8.8.4.4).
ping -n 5 8.8.8.8
pause
goto changedns

:cloudflare
cls
echo Setting DNS to Cloudflare DNS...
netsh interface ip set dns name="Ethernet" static 1.1.1.1
netsh interface ip add dns name="Ethernet" 1.0.0.1 index=2
echo DNS set to Cloudflare DNS (1.1.1.1, 1.0.0.1).
ping -n 5 1.1.1.1
pause
goto changedns

:opendns
cls
echo Setting DNS to OpenDNS...
netsh interface ip set dns name="Ethernet" static 208.67.222.222
netsh interface ip add dns name="Ethernet" 208.67.220.220 index=2
echo DNS set to OpenDNS (208.67.222.222, 208.67.220.220).
ping -n 5 208.67.222.222
pause
goto changedns

:optimizenetwork
cls
echo **********************************************************************
echo *                       Optimize Network                            *
echo **********************************************************************
echo [1] Optimize TCP/IP settings
echo [2] Clear DNS Cache
echo [3] Monitor Network with PingPlotter
echo [4] Optimize Network by Firewall Rules
echo [0] Back to Main Menu
echo.
set /p netchoice="Choose an option: "

if "%netchoice%"=="1" goto optimizetcp
if "%netchoice%"=="2" goto cleardns
if "%netchoice%"=="3" goto monitorpingplotter
if "%netchoice%"=="4" goto optimizefirewall
if "%netchoice%"=="0" goto menu
goto optimizenetwork

:optimizetcp
cls
echo Optimizing TCP/IP settings...
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=enabled
echo TCP/IP settings optimized.
pause
goto optimizenetwork

:cleardns
cls
echo Clearing DNS cache...
ipconfig /flushdns
echo DNS cache cleared.
pause
goto optimizenetwork

:monitorpingplotter
cls
echo Installing PingPlotter for network monitoring...
start https://www.pingplotter.com/download
pause
goto optimizenetwork

:optimizefirewall
cls
echo **********************************************************************
echo *                   Optimize Network by Firewall Rules              *
echo **********************************************************************
echo Adding rules to open ports for Roblox and optimize network.
echo.

:: Mở port 49152 - 65535 (dành cho Roblox)
echo Opening Roblox ports (49152-65535)...
netsh advfirewall firewall add rule name="Open Roblox Ports" protocol=TCP dir=in localport=49152-65535 action=allow
netsh advfirewall firewall add rule name="Open Roblox Ports" protocol=UDP dir=in localport=49152-65535 action=allow

:: Mở port 80 (HTTP)
echo Opening port 80 (HTTP) for faster connection...
netsh advfirewall firewall add rule name="Open HTTP Port 80" protocol=TCP dir=in localport=80 action=allow

:: Mở port 443 (HTTPS)
echo Opening port 443 (HTTPS) for secure connection...
netsh advfirewall firewall add rule name="Open HTTPS Port 443" protocol=TCP dir=in localport=443 action=allow

echo Firewall rules optimized for Roblox and network traffic.
pause
goto optimizenetwork

:createRestorePoint
cls
echo Creating System Restore Point...
powershell -Command "Checkpoint-Computer -Description 'Optimize Roblox Restore Point' -RestorePointType 'MODIFY_SETTINGS'"
echo Restore point created successfully.
pause
goto menu

:sethighperformance
cls
echo **********************************************************************
echo *              Set Roblox to High Performance (Graphics Settings)     *
echo **********************************************************************
echo Follow these steps to set Roblox to use your dedicated GPU:
echo 1. Open Windows Settings and go to "System" > "Display" > "Graphics settings".
echo 2. Select 'Desktop app' and browse to: C:\Users\[YourUsername]\AppData\Local\Roblox\Versions\[YourVersion]\RobloxPlayerBeta.exe
echo 3. After adding Roblox, click 'Options' and select 'High performance'.
echo 4. Save the changes and restart Roblox for the settings to take effect.
pause
goto menu
