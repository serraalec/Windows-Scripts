@echo off

goto comment
/* ========================================================================
$File: backup.bat$
$Date: 5/22/2020$
$Revision: 1$
$Creator: Alec Serra $
$Description: A small script to automate the backup of a minecraft server.$
    ======================================================================== */
:comment

setlocal

:: generate unique ID string
>"%temp%\~%~n0.%username%.a" echo %username%%date%%time%%random%
>NUL certutil -encode "%temp%\~%~n0.%username%.a" "%temp%\~%~n0.%username%.b"
for /f "usebackq EOL=- delims==" %%I in ("%temp%\~%~n0.%username%.b") do set "unique_id=%%I"
del "%temp%\~%~n0.%username%.a" "%temp%\~%~n0.%username%.b"
echo %unique_id%

cd C:\Program Files\PuTTY
psftp.exe -b download_server.txt

cd "C:\Users\Alec\Documents\Minecraft"
ren Arcadia "Backup %unique_id%"