@echo off
::
:: Created by r00t0vi4
::
:: r00t0vi4@rootroot.org
:: twitter.com/r00t0vi4
::

SET "LIBDIR=%~dp0data"

:: for /F "tokens=*" %%I in (config.ini) do set %%I
for /F "eol=# delims== tokens=1,2 usebackq" %%A In ("config.ini") Do (Set %%A=%%B)

IF "%~1"=="" GOTO ERROR
IF "%rest_url%"=="" GOTO ERROR
IF "%timeout%"=="" GOTO ERROR
IF "%analysis%"=="" GOTO ERROR
IF "%process_memory%"=="" GOTO ERROR
IF "%memory%"=="" GOTO ERROR
IF "%enforce_timeout%"=="" GOTO ERROR
IF "%verbose%"=="" GOTO ERROR

IF %verbose%==1 (
	set verbose=-v
) else (
	set verbose=
)

%LIBDIR%\curl.exe %verbose%  ^
-F file="@%~1" ^
-F 'timeout=%timeout%' ^
-F 'analysis=%analysis%' ^
-F 'process_memory=%process_memory%' ^
-F 'memory=%memory%' ^
-F 'enforce_timeout=%enforce_timeout%' ^
-F 'tags=%tags%' ^
-F 'options=%options%' ^
%rest_url%

GOTO END

:ERROR
echo.
echo "Error occurred. Application terminated."
pause
exit 1

:END
echo.
pause
exit 0