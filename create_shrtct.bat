@echo off
 if exist C:\Program Files (x86)\Microsoft Office\(
    goto 64bit
   )
else (
    goto 32bit
   )
   
:64bit
    set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

    echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
    echo sLinkFile = "%USERPROFILE%\Desktop\Zoom.lnk" >> %SCRIPT%
    echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
    echo oLink.TargetPath = "%appdata%\Zoom\bin\Zoom.exe" >> %SCRIPT%
    echo oLink.Save >> %SCRIPT%

    cscript /nologo %SCRIPT%
    del %SCRIPT%

 ::Word
    set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

    echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
    echo sLinkFile = "%USERPROFILE%\Desktop\Word.lnk" >> %SCRIPT%
    echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
    echo oLink.TargetPath = "C:\Program Files (x86)\Microsoft Office\root\Office16\WINWORD.exe" >> %SCRIPT%
    echo oLink.Save >> %SCRIPT%

    cscript /nologo %SCRIPT%
    del %SCRIPT%

 ::Excel
    set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

    echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
    echo sLinkFile = "%USERPROFILE%\Desktop\Excel.lnk" >> %SCRIPT%
    echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
    echo oLink.TargetPath = "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.exe" >> %SCRIPT%
    echo oLink.Save >> %SCRIPT%

    cscript /nologo %SCRIPT%
    del %SCRIPT%

 ::Power Point
    set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

    echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
    echo sLinkFile = "%USERPROFILE%\Desktop\Power Point.lnk" >> %SCRIPT%
    echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
    echo oLink.TargetPath = "C:\Program Files (x86)\Microsoft Office\root\Office16\POWERPNT.exe" >> %SCRIPT%
    echo oLink.Save >> %SCRIPT%

 cscript /nologo %SCRIPT%
 del %SCRIPT%)

::==========================================================================================================================================

:32bit
    set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

    echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
    echo sLinkFile = "%USERPROFILE%\Desktop\Zoom.lnk" >> %SCRIPT%
    echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
    echo oLink.TargetPath = "%appdata%\Zoom\bin\Zoom.exe" >> %SCRIPT%
    echo oLink.Save >> %SCRIPT%

    cscript /nologo %SCRIPT%
    del %SCRIPT%

 ::Word
    set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

    echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
    echo sLinkFile = "%USERPROFILE%\Desktop\Word.lnk" >> %SCRIPT%
    echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
    echo oLink.TargetPath = "C:\Program Files\Microsoft Office\root\Office16\WINWORD.exe" >> %SCRIPT%
    echo oLink.Save >> %SCRIPT%

    cscript /nologo %SCRIPT%
    del %SCRIPT%

 ::Excel
    set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

    echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
    echo sLinkFile = "%USERPROFILE%\Desktop\Excel.lnk" >> %SCRIPT%
    echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
    echo oLink.TargetPath = "C:\Program Files\Microsoft Office\root\Office16\EXCEL.exe" >> %SCRIPT%
    echo oLink.Save >> %SCRIPT%

    cscript /nologo %SCRIPT%
    del %SCRIPT%

 ::Power Point
    set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

    echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
    echo sLinkFile = "%USERPROFILE%\Desktop\Power Point.lnk" >> %SCRIPT%
    echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
    echo oLink.TargetPath = "C:\Program Files\Microsoft Office\root\Office16\POWERPNT.exe" >> %SCRIPT%
    echo oLink.Save >> %SCRIPT%

    cscript /nologo %SCRIPT%
    del %SCRIPT%)

REM========================Adobe shortcut==========================
::Script
if exist C:\Program Files\Adobe\Adobe After Effects 2021\Support Files(
    goto 5P
   )
else (
    goto 3P
   )

:5P
::Ps
@echo off
 set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

 echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
 echo sLinkFile = "%USERPROFILE%\Desktop\Adobe Photoshop 2021.lnk" >> %SCRIPT%
 echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
 echo oLink.TargetPath = "C:\Program Files\Adobe\Adobe Photoshop 2021\Photoshop.exe" >> %SCRIPT%
 echo oLink.Save >> %SCRIPT%

 cscript /nologo %SCRIPT%
 del %SCRIPT%

::Lr
@echo off
 set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

 echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
 echo sLinkFile = "%USERPROFILE%\Desktop\Adobe Lightroom Classic.lnk" >> %SCRIPT%
 echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
 echo oLink.TargetPath = "C:\Program Files\Adobe\Adobe Lightroom Classic\Lightroom.exe" >> %SCRIPT%
 echo oLink.Save >> %SCRIPT%

 cscript /nologo %SCRIPT%
 del %SCRIPT%

::Ai
@echo off
 set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

 echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
 echo sLinkFile = "%USERPROFILE%\Desktop\Adobe Illustrator 2021.lnk" >> %SCRIPT%
 echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
 echo oLink.TargetPath = "C:\Program Files\Adobe\Adobe Illustrator 2021\Support Files\Contents\Windows\Illustrator.exe" >> %SCRIPT%
 echo oLink.Save >> %SCRIPT%

 cscript /nologo %SCRIPT%
 del %SCRIPT%

::==========================================================================================================================================

 :3P
::Ps
@echo off
 set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

 echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
 echo sLinkFile = "%USERPROFILE%\Desktop\Adobe Photoshop 2021.lnk" >> %SCRIPT%
 echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
 echo oLink.TargetPath = "C:\Program Files\Adobe\Adobe Photoshop 2021\Photoshop.exe" >> %SCRIPT%
 echo oLink.Save >> %SCRIPT%

 cscript /nologo %SCRIPT%
 del %SCRIPT%

::Lr
@echo off
 set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

 echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
 echo sLinkFile = "%USERPROFILE%\Desktop\Adobe Lightroom Classic.lnk" >> %SCRIPT%
 echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
 echo oLink.TargetPath = "C:\Program Files\Adobe\Adobe Lightroom Classic\Lightroom.exe" >> %SCRIPT%
 echo oLink.Save >> %SCRIPT%

 cscript /nologo %SCRIPT%
 del %SCRIPT%

::Ai
@echo off
 set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

 echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
 echo sLinkFile = "%USERPROFILE%\Desktop\Adobe Illustrator 2021.lnk" >> %SCRIPT%
 echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
 echo oLink.TargetPath = "C:\Program Files\Adobe\Adobe Illustrator 2021\Support Files\Contents\Windows\Illustrator.exe" >> %SCRIPT%
 echo oLink.Save >> %SCRIPT%

 cscript /nologo %SCRIPT%
 del %SCRIPT%

::AE
@echo off
 set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

 echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
 echo sLinkFile = "%USERPROFILE%\Desktop\Adobe After Effects 2021.lnk" >> %SCRIPT%
 echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
 echo oLink.TargetPath = "C:\Program Files\Adobe\Adobe After Effects 2021\Support Files\AfterFX.exe" >> %SCRIPT%
 echo oLink.Save >> %SCRIPT%

 cscript /nologo %SCRIPT%
 del %SCRIPT%

 ::Ai
@echo off
 set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

 echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
 echo sLinkFile = "%USERPROFILE%\Desktop\Adobe Premiere Pro 2021.lnk" >> %SCRIPT%
 echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
 echo oLink.TargetPath = "C:\Program Files\Adobe\Adobe Premiere Pro 2021\Adobe Premiere Pro.exe" >> %SCRIPT%
 echo oLink.Save >> %SCRIPT%

 cscript /nologo %SCRIPT%
 del %SCRIPT%
 
exit