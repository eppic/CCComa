@echo off
title CCService by eppic
:top
cls

echo CCService - Disables Creative Cloud Services
echo.
echo Supported Services: AdobeUpdateService, Adobe Genuine Monitor Service, Adobe Genuine Software Integrity Service, -
echo.
echo This script needs to be run as Administrator.
echo.
pause
cls

sc config "AdobeUpdateService" start=disabled
sc config "Adobe Genuine Monitor Service" start=disabled
sc config "Adobe Genuine Software Integrity Service" start=disabled

echo.
echo Done.
echo.
pause