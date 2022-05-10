@ECHO OFF

ECHO =============================== Updating time service config =============================
w32tm /config /update

ECHO =============================== Synchronizing time with DC ===============================
w32tm /resync

ECHO =============================== Verify and Display current sync ==========================
w32tm /query /status


ECHO Please verify time server sync displayed above with DCJPD01.tstech.com 10.132.6.153
Echo ==========================================================================================
:choice
set /P c=Do you wish to update the time sync server[Y/N]?
if /I "%c%" EQU "Y" goto :DCTIMESET
if /I "%c%" EQU "N" goto :UPDATEGPO
goto :choice

:DCTIMESET
ECHO =============================== Configuring time sync with DC server =====================
w32tm /config /syncfromflags:domhier /update
net stop w32time
net start w32time
ECHO =============================== Updating time service config =============================
w32tm /config /update

ECHO =============================== Synchronizing time with DC ===============================
w32tm /resync

ECHO =============================== Verify and Display current sync ==========================
w32tm /query /status

:updateGPO

echo "Updating Group policy"
gpupdate /force
pause


:NetworkReset
echo "GPO policy update skipped"
set /P c=Do you wish to reset all TCP/IP settings[Y/N]?
if /I "%c%" EQU "Y" goto :RESET-TCP
if /I "%c%" EQU "N" goto :END

:RESET-TCP
ipconfig /flushdns
ipconfig /release
netsh int ip reset ipreset.txt
netsh winsock reset
ipconfig /renew
ipconfig /registerdns


echo ?
set /P c=A reboot is required to complete the settings, do you wish to reboot now[Y/N]?
if /I "%c%" EQU "Y" goto :REBOOT
if /I "%c%" EQU "N" goto :END

:REBOOT
shutdown -r -t 0

:END

pause
