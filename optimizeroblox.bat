@echo off
title Optimize Roblox - Nguyen Roblox TV
color 0A

:menu
cls
echo **********************************************************************
echo *                     OPTIMIZE ROBLOX - NGUYEN ROBLOX TV              *
echo **********************************************************************
echo.
echo [1] Bloxstrap Things (Download Bloxstrap, FastFlag)
echo [2] Clear Temporary Files
echo [3] Force Stop Roblox
echo [4] Change DNS
echo [5] Optimize Network
echo [6] Create Restore Point
echo [7] Set Roblox to High Performance
echo [8] Tweaker
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
if "%choice%"=="8" goto menu4
if "%choice%"=="0" exit
goto menu

:menu2
cls
echo **********************************************************************
echo *                     Bloxstrap Things                               *
echo **********************************************************************
echo [1] Download Bloxstrap 
echo [2] Low Quality Flag
echo [3] Verified Badge FFLAG
echo [4] No Limit 240 FPS FFLAG
echo [5] Memory Util FFLAG
echo [6] Force Roblox Use GPU FFLAG
echo.
echo [7] Stoof's FastFlags Settings V20
echo ======================================
echo [8] Black Dough Tutorial
echo [9] My Official Channel
echo.
echo [0] Back to Main Menu
echo.
set /p choice2="Choose an option: "

if "%choice2%"=="1" goto bloxstrap
if "%choice2%"=="2" goto lowqualityflag
if "%choice2%"=="3" goto verifiedbadge
if "%choice2%"=="4" goto nolimit240fps
if "%choice2%"=="5" goto memoryutil
if "%choice2%"=="6" goto forcerobloxusegpu
if "%choice2%"=="7" goto menu3
if "%choice2%"=="8" goto blackdough
if "%choice2%"=="9" goto youtubeofficial
if "%choice2%"=="0" goto menu
goto menu2

:menu3
cls
echo **********************************************************************
echo *    Credit to Stoof's Basement: https://discord.gg/CVJuFbRWJM       *
echo **********************************************************************
echo [1] Max Graphics Quality FFLAG
echo [2] High Graphics Quality FFLAG
echo [3] Balanced Graphics Quality FFLAG
echo [4] Low Graphics Quality
echo [5] Lowest Graphics Quality
echo.
echo [0] Back to Main Menu
echo.
set /p choice3="Choose an option: "

if "%choice3%"=="1" goto maxgraphicquality
if "%choice3%"=="2" goto highgraphicquality
if "%choice3%"=="3" goto balancedgraphicquality
if "%choice3%"=="4" goto lowgraphicquality
if "%choice3%"=="5" goto lowestgraphicquality
if "%choice3%"=="0" goto menu
goto menu3

::menu 3
:maxgraphicquality
cls
echo Downloading Max Graphics Quality Flag..
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/MaxGraphicsSetting.txt
set fileName=maxgraphicqualityflag.txt
goto downloadfile

:highgraphicquality
cls
echo Downloading High Graphics Quality Flag..
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/HighGraphicsSetting.txt
set fileName=highgraphicqualityflag.txt
goto downloadfile

:balancedgraphicquality
cls
echo Downloading Balanced Graphics Quality Flag..
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/BalancedGraphicsSetting.txt
set fileName=balancedgraphicqualityflag.txt
goto downloadfile

:lowgraphicquality
cls
echo Downloading Low Graphics Quality Flag..
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/LowGraphicsSetting.txt
set fileName=lowgraphicquality.txt
goto downloadfile

:lowestgraphicquality
cls
echo Downloading Lowest Graphics Quality Flag..
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/LowestGraphicsSetting.txt
set fileName=lowestgraphicquality.txt
goto downloadfile

::menu 2 
:bloxstrap
start https://bloxstraplabs.com/
goto menu2

:lowqualityflag
cls
echo Downloading Low Quality Flag...
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/lowqualityflag.txt
set fileName=lowqualityflag.txt
goto downloadfile

:verifiedbadge
cls
echo Downloading Verified Badge FFLAG...
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/VerifiedBage.txt
set fileName=VerifiedBadge.txt
goto downloadfile

:nolimit240fps
cls
echo Downloading No Limit 240 FPS FFLAG...
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/NoLimit240FPS.txt
set fileName=NoLimit240FPS.txt
goto downloadfile

:memoryutil
cls
echo Downloading Memory Util FFLAG...
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/MemoryUtil.txt
set fileName=MemoryUtil.txt
goto downloadfile

:forcerobloxusegpu
cls
echo Downloading Force Roblox Use GPU FFLAG...
set downloadUrl=https://raw.githubusercontent.com/PhucNguyen2008/Optimize-Roblox/refs/heads/main/ForceRobloxUseGPU.txt
set fileName=ForceUseGPU.txt
goto downloadfile

:blackdough
start https://youtu.be/AzSKoMWzKhQ?si=dA5QGpq-99NVVOQq
goto menu2

:youtubeofficial
start https://www.youtube.com/@nguyenrobloxtv
goto menu2

:downloadfile
:: Kiểm tra thư mục Desktop và tạo nếu không có
set desktopPath=%USERPROFILE%\Desktop\%fileName%
if not exist "%USERPROFILE%\Desktop" (
    echo Desktop folder not found! Creating Desktop folder...
    mkdir "%USERPROFILE%\Desktop"
)

:: Tải file và kiểm tra lỗi (Cải tiến)
powershell -Command "$ProgressPreference = 'SilentlyContinue'; try { Invoke-WebRequest -Uri '%downloadUrl%' -OutFile '%desktopPath%' } catch { Write-Error $_; exit 1 }"
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Failed to download %fileName%. Please check your internet connection and the URL.
    pause
    goto menu2
) else (
    echo.
    echo %fileName% downloaded successfully to Desktop: %desktopPath%
    start %USERPROFILE%\Desktop
    pause
    goto menu2
)

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
echo *                     Change DNS                                     *
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
echo *                     Optimize Network                               *
echo **********************************************************************
echo [1] Backup registry
echo [2] Optimize TCP/IP settings
echo [3] Clear DNS Cache
echo [4] Optimize Network by Firewall Rules
echo [5] Optimize Connection Limits
echo [0] Back to Main Menu
echo.
set /p netchoice="Choose an option: "

if "%netchoice%"=="1" goto backup_registry
if "%netchoice%"=="2" goto optimizetcp
if "%netchoice%"=="3" goto cleardns
if "%netchoice%"=="4" goto optimizefirewall
if "%netchoice%"=="5" goto optimize_connections
if "%netchoice%"=="0" goto menu
goto optimizenetwork

:backup_registry
:: Backup the registry before making any changes
echo Backing up Registry...
reg export HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters C:\backup_registry.reg
echo Backup completed successfully.
pause
goto optimizenetwork

:optimizetcp
cls
echo Optimizing TCP/IP settings...
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=enabled
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableLargeSendOffload" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d 8192 /f
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


:optimizefirewall
cls
echo **********************************************************************
echo *          Optimize Network by Firewall Rules                     *
echo **********************************************************************
echo Adding rules to open ports for Roblox and optimize network.
echo.

:: Mở port 49152 - 65535 (dành cho Roblox)
echo Opening Roblox ports (49152-65535)...
netsh advfirewall firewall add rule name="Open Roblox Ports TCP" protocol=TCP dir=in localport=49152-65535 action=allow
netsh advfirewall firewall add rule name="Open Roblox Ports UDP" protocol=UDP dir=in localport=49152-65535 action=allow

:: Mở port 80 (HTTP)
echo Opening port 80 (HTTP) for faster connection...
netsh advfirewall firewall add rule name="Open HTTP Port 80" protocol=TCP dir=in localport=80 action=allow

:: Mở port 443 (HTTPS)
echo Opening port 443 (HTTPS) for secure connection...
netsh advfirewall firewall add rule name="Open HTTPS Port 443" protocol=TCP dir=in localport=443 action=allow

echo Firewall rules optimized for Roblox and network traffic.
pause
goto optimizenetwork

:optimize_connections
:: Optimize connection limits
echo Optimizing Connection Limits...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f
echo Connection limits optimization completed.
pause
goto optimizenetwork

::

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
echo * Set Roblox to High Performance (Graphics Settings) *
echo **********************************************************************
echo Follow these steps to set Roblox to use your dedicated GPU:
echo 1. Open Windows Settings and go to "System" > "Display" > "Graphics settings".
echo 2. Select 'Desktop app' and browse to: %LOCALAPPDATA%\Roblox\Versions\[YourVersion]\RobloxPlayerBeta.exe
echo 3. After adding Roblox, click 'Options' and select 'High performance'.
echo 4. Save the changes and restart Roblox for the settings to take effect.
pause
goto menu


:menu4
cls
echo **********************************************************************
echo *             Tweaker(Require Administrator privileges)              *
echo **********************************************************************
echo.
echo [1] Backup Registry
echo [2] Disable Windows Defender !!! NOT RECOMMEND !!!
echo [3] Disable Telemetry
echo [4] Disable Cortana
echo [5] Optimize Virtual Memory
echo [6] Disable Windows Automatic Updates
echo [7] Disable Windows Search Service
echo [8] Disable Visual Effects
echo [9] Increase TCP Connections
echo [10] Disable Hibernation
echo [11] Turn Off Windows Defender Real-Time Protection !!! NOT RECOMMEND !!!
echo [12] Disable Windows Error Reporting
echo [13] Disable USB Autorun
echo [14] Disable Windows Store
echo [15] Speed Up Folder Browsing
echo [16] Optimize Internet Connection (TCP)
echo [17] Speed Up Boot Time
echo [18] Disable Task Scheduler
echo [19] Disable UAC
echo [20] Set Power Plan to High Performance
echo.
echo [0] Back to Main Menu
echo ==============================
set /p choice4="Choose an option to perform: "

if "%choice4%"=="1" goto backup_registry

if "%choice4%"=="2" (
    echo WARNING: Disabling Windows Defender is NOT RECOMMENDED.
    set /p confirm="Are you sure you want to proceed? (Y/N): "
    if /i "%confirm%"=="Y" goto disable_defender
    goto menu4
)

if "%choice4%"=="3" goto disable_telemetry
if "%choice4%"=="4" goto disable_cortana
if "%choice4%"=="5" goto optimize_virtual_memory
if "%choice4%"=="6" goto disable_updates
if "%choice4%"=="7" goto disable_search_service
if "%choice4%"=="8" goto disable_visual_effects
if "%choice4%"=="9" goto increase_tcp_connections
if "%choice4%"=="10" goto disable_hibernation

if "%choice4%"=="11" (
    echo WARNING: Turning off Windows Defender Real-Time Protection is NOT RECOMMENDED.
    set /p confirm="Are you sure you want to proceed? (Y/N): "
    if /i "%confirm%"=="Y" goto turn_off_defender_realtime
    goto menu4
)

if "%choice4%"=="12" goto disable_error_reporting
if "%choice4%"=="13" goto disable_usb_autorun
if "%choice4%"=="14" goto disable_store
if "%choice4%"=="15" goto speed_up_folder_browsing
if "%choice4%"=="16" goto optimize_internet_connection
if "%choice4%"=="17" goto speed_up_boot_time
if "%choice4%"=="18" goto disable_task_scheduler
if "%choice4%"=="19" goto disable_uac
if "%choice4%"=="20" goto set_power_plan
if "%choice4%"=="0" goto menu

:backup_registry

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Backing up Registry...
reg export HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters C:\backup_registry.reg
echo Backup completed successfully.
pause
goto menu4

:disable_defender

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling Windows Defender...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /t REG_DWORD /d 1 /f
echo Windows Defender disabled.
pause
goto menu4

:disable_telemetry

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling Windows Telemetry...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
echo Windows Telemetry disabled.
pause
goto menu4

:disable_cortana

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling Cortana...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
echo Cortana disabled.
pause
goto menu4

:disable_restore

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

:optimize_virtual_memory

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Optimizing Virtual Memory...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "PagingFiles" /t REG_SZ /d "C:\pagefile.sys 4096 8192" /f
echo Virtual Memory optimized.
pause
goto menu4

:disable_updates

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling Windows Automatic Updates...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d 1 /f
echo Windows Updates disabled.
pause
goto menu4

:disable_search_service

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling Windows Search Service...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WSearch" /v "Start" /t REG_DWORD /d 4 /f
echo Windows Search Service disabled.
pause
goto menu4

:disable_visual_effects

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling Visual Effects for performance...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "90 12 03 80" /f
echo Visual Effects disabled.
pause
goto menu4

:increase_tcp_connections

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Increasing TCP Connections...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 65534 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f
echo TCP Connections increased.
pause
goto menu4

:disable_hibernation

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling Hibernation...
powercfg -h off
echo Hibernation disabled.
pause
goto menu4

:turn_off_defender_realtime

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Turning off Windows Defender Real-Time Protection...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableRealtimeMonitoring" /t REG_DWORD /d 1 /f
echo Real-Time Protection turned off.
pause
goto menu4

:disable_error_reporting

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling Windows Error Reporting...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f
echo Windows Error Reporting disabled.
pause
goto menu4

:disable_usb_autorun

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling USB Autorun...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d 0x000000FF /f
echo USB Autorun disabled.
pause
goto menu4

:disable_store

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling Windows Store...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\WindowsStore" /v "RemoveWindowsStore" /t REG_DWORD /d 1 /f
echo Windows Store disabled.
pause
goto menu4

:speed_up_folder_browsing

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Speeding up Folder Browsing...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /v "Max Cached Icons" /t REG_DWORD /d 4096 /f
echo Folder Browsing sped up.
pause
goto menu4

:optimize_internet_connection

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Optimizing Internet Connection...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpWindowSize" /t REG_DWORD /d 8192 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d 1 /f
echo Internet Connection optimized.
pause
goto menu4

:speed_up_boot_time

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Speeding up Boot Time...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFastStartup" /t REG_DWORD /d 1 /f
echo Boot Time sped up.
pause
goto menu4

:disable_task_scheduler

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling Task Scheduler...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule" /v "Start" /t REG_DWORD /d 4 /f
echo Task Scheduler disabled.
pause
goto menu4

:disable_uac

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Disabling UAC (User Account Control)...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 0 /f
echo UAC disabled.
pause
goto menu4

:set_power_plan

REM Check for admin privileges
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator privileges are required to run this script.
    pause
    exit /b
)

echo Setting Power Plan to High Performance...
powercfg -change -standby-timeout-ac 0
powercfg -change -monitor-timeout-ac 0
powercfg -setactive SCHEME_MIN
echo Power Plan set to High Performance.
pause
goto menu4