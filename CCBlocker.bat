:top
@echo off
title CCBlocker by eppic
cls

set command=
echo CCBlocker - Block unnecessary Adobe processes by renaming 
echo.
echo (1) Block processes
echo (2) Unblock processes
echo.
echo (L) Block LogTransport (Program-specific process-block)
echo.
set /p command=Command:
echo.

if /i "%command%"=="1" goto bp_act
if /i "%command%"=="2" goto ubp_act
if /i "%command%"=="L" goto blt_menu
goto top

:bp_act
ren "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync\CoreSync.exe" "CoreSync.exe1"
ren "C:\Program Files\Adobe\Adobe Creative Cloud Experience\CCXProcess.exe" "CCXProcess.exe1"
ren "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\Adobe Desktop Service.exe" "Adobe Desktop Service.exe1"
ren "C:\Program Files\Common Files\Adobe\Creative Cloud Libraries\CCLibrary.exe" "CCLibrary.exe1"
echo Done.
pause
goto top

:ubp_act
ren "C:\Program Files (x86)\Adobe\Adobe Sync\CoreSync\CoreSync.exe1" "CoreSync.exe"
ren "C:\Program Files\Adobe\Adobe Creative Cloud Experience\CCXProcess.exe1" "CCXProcess.exe"
ren "C:\Program Files (x86)\Common Files\Adobe\Adobe Desktop Common\ADS\Adobe Desktop Service.exe1" "Adobe Desktop Service.exe"
ren "C:\Program Files\Common Files\Adobe\Creative Cloud Libraries\CCLibrary.exe1" "CCLibrary.exe"
echo Done.
pause
goto top

:blt_menu
cls
set blt_menu=
echo Set Year of Adobe Products:
echo Example: "Adobe Photoshop ****" (2020,2021,2022,...)
set /p Yearblt=YEAR:
if "%Yearblt%"=="" goto blt_menu

:blt_menu2
cls
set command_blt=
echo YEAR: %Yearblt%
echo Supported Programs: Ps, Pr, Ae, Au, Me, Dw, Acrobat DC, CC Stuff
echo.
echo (1) Block LogTransport2
echo (2) Unblock LogTransport2
echo.
echo (B) Go Back...
echo.
set /p command_blt=Command:
echo.

if /i "%command_blt%"=="1" goto bltbp_act
if /i "%command_blt%"=="2" goto bltubp_act
if /i "%command_blt%"=="B" goto top
goto blt_menu2

:bltbp_act
echo.

echo Ps
ren "C:\Program Files\Adobe\Adobe Photoshop %Yearblt%\LogTransport2.exe" "LogTransport2.exe1"
echo.
echo Pr
ren "C:\Program Files\Adobe\Adobe Premiere Pro %Yearblt%\LogTransport2.exe" "LogTransport2.exe1"
echo.
echo Ae
ren "C:\Program Files\Adobe\Adobe After Effects %Yearblt%\Support Files\LogTransport2.exe" "LogTransport2.exe1"
echo.
echo Au
ren "C:\Program Files\Adobe\Adobe Audition %Yearblt%\LogTransport2.exe" "LogTransport2.exe1"
echo.
echo Me
ren "C:\Program Files\Adobe\Adobe Media Encoder %Yearblt%\LogTransport2.exe" "LogTransport2.exe1"
echo.
echo Dw
ren "C:\Program Files\Adobe\Adobe Dreamweaver %Yearblt%\LogTransport2.exe" "LogTransport2.exe1"
echo.
echo Acrobat DC
ren "C:\Program Files (x86)\Adobe\Acrobat DC\Acrobat\LogTransport2.exe" "LogTransport2.exe1"
echo.
echo Other
ren "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\UWA\LogTransport2.exe" "LogTransport2.exe1"
echo.

echo Done.
pause
goto blt_menu2


:bltubp_act
echo Ps
ren "C:\Program Files\Adobe\Adobe Photoshop %Yearblt%\LogTransport2.exe1" "LogTransport2.exe"
echo.
echo Pr
ren "C:\Program Files\Adobe\Adobe Premiere Pro %Yearblt%\LogTransport2.exe1" "LogTransport2.exe"
echo.
echo Ae
ren "C:\Program Files\Adobe\Adobe After Effects %Yearblt%\Support Files\LogTransport2.exe1" "LogTransport2.exe"
echo.
echo Au
ren "C:\Program Files\Adobe\Adobe Audition %Yearblt%\LogTransport2.exe1" "LogTransport2.exe"
echo.
echo Me
ren "C:\Program Files\Adobe\Adobe Media Encoder %Yearblt%\LogTransport2.exe1" "LogTransport2.exe"
echo.
echo Dw
ren "C:\Program Files\Adobe\Adobe Dreamweaver %Yearblt%\LogTransport2.exe1" "LogTransport2.exe"
echo.
echo Acrobat DC
ren "C:\Program Files (x86)\Adobe\Acrobat DC\Acrobat\LogTransport2.exe1" "LogTransport2.exe"
echo.
echo Other
ren "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\UWA\LogTransport2.exe1" "LogTransport2.exe"
echo.

echo Done.
pause
goto blt_menu2

:
