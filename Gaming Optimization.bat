@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
cls
:start
color 1e
echo.
echo      ///////////////////////////////
echo     //                           //
echo    //  crustySenpai's Gaming    //
echo   //      Optimization         //
echo  //                           //
echo ///////////////////////////////
echo.
echo This little Script closes useless Processes and Services
echo to provide better Performance.
echo.
echo Choose an Option:
echo.
echo 1 = Optimize for Gaming
echo 2 = Revert to default
echo 3 = Exit
echo.
goto select
echo.

rem   /////////////////
rem  //  Game List  //
rem /////////////////

:choose_game
echo.
echo Please select the Game you want to run:
echo.
echo 0.  Optimize without Game
echo 1.  Left 4 Dead
echo 2.  Left 4 Dead 2
echo 3.  Dead by Daylight
echo 4.  Payday 2
echo 5.  Call of Duty: World at War
echo 6.  Call of Duty: Black Ops 3
echo 7.  Plutonium Launcher
echo 8.  Minecraft Launcher
echo 9.  Grand Theft Auto V
echo 10. PC Building Simulator
echo 11. Raft
echo 12. Outlast 2
echo 13. Cemu Emulator
echo.
goto game_select

rem   /////////////////////
rem  //  Game Startups  //
rem /////////////////////

:l4d
echo Starting Left 4 Dead...
start "C:\Program Files (x86)\Steam\steam.exe" steam://rungameid/500
@ping -n 10 localhost> nul
echo Left 4 Dead started Sucessfully!
echo.
goto optimize

:l4d2
echo Starting Left 4 Dead 2...
start "C:\Program Files (x86)\Steam\steam.exe" steam://rungameid/550
@ping -n 10 localhost> nul
echo Left 4 Dead 2 started Sucessfully!
echo.
goto optimize

:dbd
echo Starting Dead by Daylight...
start "C:\Program Files (x86)\Steam\steam.exe" steam://rungameid/381210
@ping -n 10 localhost> nul
echo Dead by Daylight started Sucessfully!
echo.
goto optimize

:pd2
echo Starting Payday 2...
start "C:\Program Files (x86)\Steam\steam.exe" steam://rungameid/218620
@ping -n 10 localhost> nul
echo Payday 2 started Sucessfully!
echo.
goto optimize

:cod_waw
echo Starting Call of Duty: World at War...
start "C:\Program Files (x86)\Steam\steam.exe" steam://rungameid/10090
@ping -n 10 localhost> nul
echo Call of Duty: World at War started Sucessfully!
echo.
goto optimize

:cod_bo3
echo Starting Call of Duty: Black Ops 3...
start "C:\Program Files (x86)\Steam\steam.exe" steam://rungameid/311210
@ping -n 10 localhost> nul
echo Call of Duty: Black Ops 3 started Sucessfully!
echo.
goto optimize

:plutonium
echo Starting Plutonium Launcher...
start "" "C:\Program Files\Plutonium\plutonium.exe"
@ping -n 10 localhost> nul
echo Plutonium Launcher started Sucessfully!
echo.
goto optimize

:mc
echo Starting Minecraft Launcher...
start "" "H:\Games\Minecraft\Minecraft-beta.exe"
@ping -n 10 localhost> nul
echo Minecraft Launcher started Sucessfully!
echo.
goto optimize

:gta5
echo Starting Grand Theft Auto V...
start "" "C:\Program Files (x86)\Epic Games\Game Shortcuts\Grand Theft Auto V.url"
@ping -n 25 localhost> nul
echo Grand Theft Auto V started Sucessfully!
echo.
goto optimize

:pcbs
echo Starting PC Building Simulator...
start "" "D:\Games\PC Building Simulator\PCBS.exe"
@ping -n 10 localhost> nul
echo PC Building Simulator started Sucessfully!
echo.
goto optimize

:raft
echo Starting Raft...
start "" "D:\Games\Raft\Raft.exe"
@ping -n 6 localhost> nul
echo Raft started Sucessfully!
echo.
goto optimize

:outlast_2
echo Starting Outlast 2...
start "" "D:\Games\Outlast 2\Binaries\Win64\Outlast2.exe"
@ping -n 10 localhost> nul
echo Outlast 2 started Sucessfully!
echo.
goto optimize

:cemu
echo Starting Cemu Emulator...
start "" "D:\Emulatoren\cemu\Cemu.exe"
@ping -n 5 localhost> nul
echo Cemu Emulator started Sucessfully!
echo.
goto optimize

rem   /////////////////////////
rem  //  Optimize & Revert  //
rem /////////////////////////

:optimize
echo Disable useless Services and Tasks
echo This may take some time...
echo.
taskkill /F /IM AdobeNotificationClient.exe
taskkill /F /IM AdobeUpdateService.exe
taskkill /F /IM explorer.exe
taskkill /F /IM Microsoft.Photos.exe
taskkill /F /IM WinStore.App.exe
taskkill /F /IM TaskInputHost.exe
taskkill /F /IM NordVPN.exe
net stop "AdobeUpdateService"
net stop "AGMService"
net stop "AGSService"
net stop "Sense"
net stop "seclogon"
net stop "Net Driver HPZ12"
net stop "Pml Driver HPZ12"
net stop "HPSLPSVC"
net stop "CDPSvc"
net stop "CDPUserSvc_96cfc"
net stop "nordvpn-service"
net stop "CscService"
net stop "PhoneSvc"
net stop "Fax"
net stop "SbieSvc"
net stop "InstallService"
net stop "icssvc"
net stop "SEMgrSvc"
net stop "SmsRouter"
net stop "Spooler"
net stop "SysMain"
net stop "WpnService"
net stop "WSearch"
echo Optimization Successfull!
goto select_3

:reset
echo Enable Services and Tasks
echo This may take some time...
echo.
start explorer.exe
net start "AdobeUpdateService"
net start "AGMService"
net start "AGSService"
net start "seclogon"
net start "Net Driver HPZ12"
net start "Pml Driver HPZ12"
net start "HPSLPSVC"
net start "CDPSvc"
net start "CDPUserSvc_96cfc"
net start "nordvpn-service"
net start "PhoneSvc"
net start "SbieSvc"
net start "InstallService"
net start "SEMgrSvc"
net start "Spooler"
net start "SysMain"
net start "WpnService"
net start "WSearch"
echo Settings reverted to default!
goto select_2

rem   ////////////////////
rem  //  Choice Input  //
rem ////////////////////

:game_select
echo.
set /p c=Select your Option: 
echo.
if "%c%"=="6969" goto why...
if "%c%"=="0" goto optimize
if "%c%"=="1" goto l4d
if "%c%"=="2" goto l4d2
if "%c%"=="3" goto dbd
if "%c%"=="4" goto pd2
if "%c%"=="5" goto cod_waw
if "%c%"=="6" goto cod_bo3
if "%c%"=="7" goto plutonium
if "%c%"=="8" goto mc
if "%c%"=="9" goto gta5
if "%c%"=="10" goto pcbs
if "%c%"=="11" goto raft
if "%c%"=="12" goto outlast_2
if "%c%"=="13" goto cemu
if "%c%" GTR "13" goto game_select

:select
set /p c=Select your Option: 
echo.
if "%c%"=="6969" goto why...
if "%c%" GTR "3" goto select
if "%c%" LSS "1" goto select
if "%c%"=="1" goto choose_game
if "%c%"=="2" goto reset
if "%c%"=="3" goto exit

:select_2
echo.
echo Choose an Option:
echo.
echo 1 = Optimize for Gaming
echo 2 = Exit
echo.
set /p c=Select your Option: 
echo.
if "%c%"=="6969" goto why...
if "%c%" GTR "2" goto select_2
if "%c%" LSS "1" goto select_2
if "%c%"=="1" goto choose_game
if "%c%"=="2" goto exit

:select_3
echo.
echo Choose an Option:
echo.
echo 1 = Revert to default
echo 2 = Exit
echo.
set /p c=Select your Option: 
echo
if "%c%"=="6969" goto why...
if "%c%" GTR "2" goto select_3
if "%c%" LSS "1" goto select_3
if "%c%"=="1" goto reset
if "%c%"=="2" goto exit

rem   ///////////
rem  //  lol  //
rem ///////////

:why...
echo that's not what you supposed to do here...
echo anyway if you're already here follow my YouTube: https://www.youtube.com/channel/UCPaLYkLQVanuXOrBSxrZyAQ
pause
exit

rem   ////////////
rem  //  Exit  //
rem ////////////

:exit
exit