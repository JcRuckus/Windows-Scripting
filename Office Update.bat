@ECHO OFF

ECHO Cleaning all WU temp files and windows update files
::::::::::::::::::::::::::::
REM dism.exe /Online /Cleanup-image /Restorehealth

Echo Running Microsoft Office Updater
"C:\Program Files\Common Files\Microsoft Shared\ClickToRun\OfficeC2RClient.exe" /update user updatepromptuser=true forceappshutdown=true displaylevel=true


REM wuauclt /detectnow
REM wuauclt /updatenow
REM wuauclt /detectnow /updatenow

REM control update

REM ms-settings:windowsupdate

REM Install-Module PSWindowsUpdate

REM Install-WindowsUpdate 

REM Add-WUServiceManager -MicrosoftUpdate

REM UsoClient -StartScan -StartDownload -StartInstall

exit