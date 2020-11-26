REM LATENCY CHECK BY TECHROY23

REM << Change me >>
SET IP=1.1.1.1
REM << Change me >>

@echo off

mode 17,7

cls

:title
TITLE -PING-

:main
CALL:latency %ip%

:screen
cls
ECHO.
echo  PING %ip%
echo  TEST-1 %q%
echo  TEST-2 %qq%
echo  TEST-3 %qqq%
echo  TEST-4 %qqqq%

GOTO title

:latency
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %1 ^| FIND "ms"') DO SET q=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %1 ^| FIND "ms"') DO SET qq=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %1 ^| FIND "ms"') DO SET qqq=%%i
FOR /F "tokens=4 delims== skip=1" %%i IN ('ping.exe -n 1 -l 1 %1 ^| FIND "ms"') DO SET qqqq=%%i