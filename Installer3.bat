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
echo Crackies beta installer
@echo off

::========Example========
 REM "%~dp0\Test.exe" /S /Auto /norestart  << This package software for install you can custom drive path installer "D:/test/vlc.exe" || /S is mean Silent mode do not show therminal installer || /Auto is mean auto installation || /norestart << Do not restart after install has been finished. || %~dp0 << custom directory path as a default.
 REM echo Test has been installed! << Comment like a printf (From java programming or another program) 
::=======================
REM On line 34 to 35 you can copy paste for use many software.
