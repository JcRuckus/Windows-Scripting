ECHO .
ECHO .
ECHO Enable use of Windows Update Server
ECHO .
ECHO ..
ECHO ...
ECHO .....
ECHO Modifying registry for use of Windows Update Sources
REM REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v /f UseWUServer =dword:00000000
REM REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /v DoNotConnectToWindowsUpdateInternetLocations = 0
ECHO .
ECHO .
ECHO .
ECHO Resetting Windows Store Cache


Dism /Online /Cleanup-Image /CheckHealth
Dism /Online /Cleanup-Image /ScanHealth
Dism /Online /Cleanup-Image /RestoreHealth

PAUSE

ECHO Verifying and Repairing System Files
sfc /scannow

ECHO Reboot PC to apply settings
REM shutdown -r -t 0
PAUSE
ECHO ==================================================================================================
REM START https://www.microsoft.com/en-us/software-download/windows10
REM START https://go.microsoft.com/fwlink/?LinkID=799445
ECHO ==================================================================================================
REM ECHO Run Windows Troubleshooter
REM ECHO choose the Additional Troubleshooters at the bottom
REM ECHO Now choose "Windows Store Apps"
REM ms-settings:troubleshoot
ECHO ==================================================================================================
REM Dism /Image:C:\offline /Cleanup-Image /RestoreHealth /Source:c:\test\mount\windows
REM Dism /Online /Cleanup-Image /RestoreHealth /Source:c:\test\mount\windows /LimitAccess
ECHO ==================================================================================================

