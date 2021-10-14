REM LATENCY CHECK BY TECHROY23

@echo off
mode 30,20
cls
echo.
echo.
echo.
echo.

echo   PLEASE
echo   WAIT
echo   WHILE
echo   WE
echo   WARM
echo   UP
echo   .....

set IP1=1.1.1.1
set IP2=1.0.0.1
set IP3=8.8.8.8
set IP4=8.8.4.4

:title
TITLE Latency Checker

:main
CALL:latency %IP1% %IP2% %IP3% %IP4%

:screen
cls
ECHO.
echo  DNS      TEST-1
echo  %IP1% %T1A%
echo  %IP2% %T1B%
echo  %IP3% %T1C%
echo  %IP4% %T1D%

ECHO.
echo  DNS      TEST-2
echo  %IP1% %T2A%
echo  %IP2% %T2B%
echo  %IP3% %T2C%
echo  %IP4% %T2D%

ECHO.
echo  DNS      TEST-3
echo  %IP1% %T3A%
echo  %IP2% %T3B%
echo  %IP3% %T3C%
echo  %IP4% %T3D%

GOTO title

:latency
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %1 ^| FIND "ms"') DO SET T1A=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %2 ^| FIND "ms"') DO SET T1B=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %3 ^| FIND "ms"') DO SET T1C=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %4 ^| FIND "ms"') DO SET T1D=%%i

FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %1 ^| FIND "ms"') DO SET T2A=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %2 ^| FIND "ms"') DO SET T2B=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %3 ^| FIND "ms"') DO SET T2C=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %4 ^| FIND "ms"') DO SET T2D=%%i

FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %1 ^| FIND "ms"') DO SET T3A=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %2 ^| FIND "ms"') DO SET T3B=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %3 ^| FIND "ms"') DO SET T3C=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %4 ^| FIND "ms"') DO SET T3D=%%i
