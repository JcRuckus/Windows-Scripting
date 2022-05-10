Echo Current computername is
hostname
echo ?
set /P c=Do you wish to rename this computer[Y/N]?
:: if /I "%c%" EQU "Y" goto Rename
:: if /I "%c%" EQU "N" goto END

:Reboot
shutdown -r -t 0

:END
::REM wmic computersystem where name="%computername%" call rename= "%newhostname%"

echo ?
:: set /P c=Do you wish to restart now and apply all the new changes[Y/N]?
:: if /I "%c%" EQU "Y" goto Reboot
:: if /I "%c%" EQU "N" goto END

:Reboot
shutdown -r -t 0

:END
ECHO Script Completed.  Have a Nice Day!  ~Joshua Rucker
PAUSE

netdom.exe join %computername% /domain:tstech.com -OUPath "OU=Americas New Build PCs,OU=Americas,DC=tstech,DC=com" /UserD:TS\jrucker1 -restart -force
PAUSE