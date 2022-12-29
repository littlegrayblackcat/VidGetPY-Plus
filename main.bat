@ECHO OFF
TITLE Vidget+
ECHO Welcome to VidGet
ECHO.
ECHO.
:choosedownloader
ECHO Please select the downloader
ECHO [1] MP4 Downloader 
ECHO [2] MP3 Downloader 
set choice=
set /p choice=Choose the downloader by typing a number.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto mp4
if '%choice%'=='2' goto mp3
ECHO "%choice%" is not valid, try again
ECHO.
GOTO choosedownloader
:mp4
start Downloaders\MP4.py
goto end
:mp3
start Downloaders\MP3.py
goto end

:end