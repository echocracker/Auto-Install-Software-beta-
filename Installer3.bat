:: ===================Requirement Run AS Administrator===================
@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
    
::=======================================Package for Running=======================================
@echo off
cls
echo IT_City Standard program installer V2
@echo off

 "%~dp0\Pack\aimp.exe" /S /Auto /norestart
  echo Aimp Installed Successful!
 "%~dp0\Pack\LineInst.exe" /S /Auto /norestart
  echo Line Installed Successful!
 "%~dp0\Pack\PhotoScapeSetup.exe" /S /Auto /norestart
  echo Photoscape Installed Successful!
 "%~dp0\Pack\Teams_windows.exe" /S /Auto /norestart
  echo Teams Installed Successful!
 "%~dp0\Pack\wrar.exe" /S /Auto /norestart
  echo Winrar Installed Successful!
 "%~dp0\Pack\ZoomInstaller.exe" /S /Auto /norestart
  echo Zoom Installed Successful!
 "%~dp0\Pack\ChromeStandaloneSetup64.exe"
  echo GoogleChrome Installed Successful!
 "%~dp0\Pack\Adobe 2021_3Pack\Set-up.exe" /S /Auto /norestart
 echo Adobe Pack Installed Successful!
 
 CD /D "%~dp0\Pack" 2>Nul || Exit \B
 For %%A In (AnyDesk.exe) Do Start  "" "%%A" /sPB /rs
 echo Anydesk Installed Successful!

 CD /D "%~dp0\Pack" 2>Nul || Exit \B
 For %%A In (KMPlayer_4.2.2.73.exe) Do Start  "" "%%A" /sPB /rs
 echo KMPlayer Installed Successful!

  CD /D "%~dp0\Pack\Acrobat\Adobe Acrobat XI" 2>Nul || Exit \B
 For %%A In (Setup.exe) Do Start  "" "%%A" /sPB /rs
 echo Acrobat Installed Successful!

:: ====================================Create shortcut Part====================================
@ECHO OFF
   CALL Pack\create_shrtct.bat

exit
