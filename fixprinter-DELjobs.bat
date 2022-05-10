@ECHO OFF
:START
runas /user:jrucker1@tstech.com /password:Skippy70!@ "%windir%\system32\net stop spooler"

runas /user:jrucker1@tstech.com /password:Skippy70!@ del /Q /F /S "%windir%\System32\spool\PRINTERS\*.*"

runas /user:jrucker1@tstech.com /password:Skippy70!@ "%windir%\system32\net start spooler"

PAUSE
goto START