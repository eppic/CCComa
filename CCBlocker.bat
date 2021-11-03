:top
@echo off
title CCBlocker
cls

set command=
echo Adobe CCBlocker - Block unnecessary Adobe processes by renaming
echo.
echo (BP) Block processes
echo (UBP) Unblock processes
echo.
echo (BLT) Block LogTransport (Program-specific process-block)
echo.
set /p command=Command:
echo.

if /i "%command%"=="bp" goto bp_act
if /i "%command%"=="ubp" goto ubp_act
if /i "%command%"=="blt" goto blt_menu
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
echo Example: "Adobe Photoshop ****" 
set /p Yearblt=YEAR:
if "%Yearblt%"=="" goto blt_menu

:blt_menu2
cls
set command_blt=
echo YEAR: %Yearblt%
echo Supported Programs: Ps, Pr, Ae, Au, Me, Acrobat DC, CC Stuff
echo.
echo (BP) Block LogTransport2
echo (UBP) Unblock LogTransport2
echo (B) Go Back
echo.
set /p command_blt=Command:
echo.

if /i "%command_blt%"=="bp" goto bltbp_act
if /i "%command_blt%"=="ubp" goto bltubp_act
if /i "%command_blt%"=="b" goto top
goto blt_menu2

:bltbp_act
ren "C:\Program Files\Adobe\Adobe Photoshop %Yearblt%\LogTransport2.exe" "LogTransport2.exe1"
ren "C:\Program Files\Adobe\Adobe Premiere Pro %Yearblt%\LogTransport2.exe" "LogTransport2.exe1"
ren "C:\Program Files\Adobe\Adobe After Effects %Yearblt%\Support Files\LogTransport2.exe" "LogTransport2.exe1"
ren "C:\Program Files\Adobe\Adobe Audition %Yearblt%\LogTransport2.exe" "LogTransport2.exe1"
ren "C:\Program Files\Adobe\Adobe Media Encoder %Yearblt%\LogTransport2.exe" "LogTransport2.exe1"
ren "C:\Program Files (x86)\Adobe\Acrobat DC\Acrobat\LogTransport2.exe" "LogTransport2.exe1"
ren "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\UWA\LogTransport2.exe" "LogTransport2.exe1"
echo Done.
pause
goto blt_menu2


:bltubp_act
ren "C:\Program Files\Adobe\Adobe Photoshop %Yearblt%\LogTransport2.exe1" "LogTransport2.exe"
ren "C:\Program Files\Adobe\Adobe Premiere Pro %Yearblt%\LogTransport2.exe1" "LogTransport2.exe"
ren "C:\Program Files\Adobe\Adobe After Effects %Yearblt%\Support Files\LogTransport2.exe1" "LogTransport2.exe"
ren "C:\Program Files\Adobe\Adobe Audition %Yearblt%\LogTransport2.exe1" "LogTransport2.exe"
ren "C:\Program Files\Adobe\Adobe Media Encoder %Yearblt%\LogTransport2.exe1" "LogTransport2.exe"
ren "C:\Program Files (x86)\Adobe\Acrobat DC\Acrobat\LogTransport2.exe1" "LogTransport2.exe"
ren "C:\Program Files (x86)\Common Files\Adobe\OOBE\PDApp\UWA\LogTransport2.exe1" "LogTransport2.exe"
echo Done.
pause
goto blt_menu2

:
