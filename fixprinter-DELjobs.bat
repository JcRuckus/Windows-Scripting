@ECHO OFF
:START
runas /user: "%windir%\system32\net stop spooler"

runas /user: del /Q /F /S "%windir%\System32\spool\PRINTERS\*.*"

runas /user: "%windir%\system32\net start spooler"

PAUSE
goto START
