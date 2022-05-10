@ECHO OFF
:START
"%windir%\system32\net stop spooler"

del /Q /F /S "%windir%\System32\spool\PRINTERS\*.*"

"%windir%\system32\net start spooler"

PAUSE

