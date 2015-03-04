@echo off
::
:: Created by r00t0vi4
::
:: r00t0vi4@rootroot.org
:: twitter.com/r00t0vi4
::

SET "LIBDIR=%~dp0data"

for /F "tokens=*" %%I in (config.ini) do set %%I

IF "%~1"=="" GOTO ERROR
IF "REST_URL"=="" GOTO ERROR

%LIBDIR%\curl.exe -v -F file="@%~1" %REST_URL%

:ERROR
echo "Error occurred. Application terminated."
exit 1

:END
exit 0