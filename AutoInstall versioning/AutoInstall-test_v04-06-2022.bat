@ECHO OFF
REM Display the name of the game in the Windows command console's title bar
TITLE = Joshua Rucker's automated PC setup and upgrade script
:PUBLISHER: Rucker, Joshua 956-821-2972

REM set batch file script path as default working path
CD /d %~dp0
ECHO ===================================================================================

ECHO Script to Query Device Model from WMIC and move to section for that model detected
:START
    setlocal enableextensions disabledelayedexpansion

    for /f "tokens=2 delims==" %%a in (
    'wmic computersystem get model /value'
) do for /f "delims=" %%b in ("%%~a") do (
    if /i "%%~b"=="Inspiron 5379" ECHO %%a

 
    echo Drivers for the %%b were not found
	ECHO.
	ECHO.
	goto :skipDrivers

:skipDrivers
    echo Start of script for missing model  "%%b"
	ECHO PC model not found in process...
	ECHO Pressing a key will continue with other install items, else, close window.
PAUSE
	ECHO Bypassing Drivers and Firmware and continuing to remaining items.


ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                                                   ::
ECHO :: Device Drivers and Firmware Completed or skipped  ::
ECHO ::                                                   ::
ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.

ECHO :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.
::					Pending to script				      ::
::											      ::
:: Message to user:
	::do
	::x=msgbox("Please ensure the network is connected and working before continuing, Press OK to continue", 0+48, "Network Access needed to continue")
	
	Echo Current computername is
	hostname
	ECHO.
	set /P c=Do you wish to rename this computer[Y/N]?
	if /I "%c%" EQU "Y" goto PCrename
	if /I "%c%" EQU "N" goto rebootquestion

:PCrename
	SET /P newname= "Enter the new hostname for this pc: "
	wmic computersystem where caption='currentname' rename '%newname%' 
	::wmic computersystem where name="%computername%" call rename="%newname% "

:rebootquestion
	echo Question...
	::set /P c=Do you wish to restart now and apply all the new changes[Y/N]?
	::if /I "%c%" EQU "Y" goto Reboot
	::if /I "%c%" EQU "N" goto END

::Reboot
	::shutdown -r -t 0

:END
	ECHO Script Completed.  Have a Nice Day!  ~Joshua Rucker
goto START

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::Template Modules


:::::: Set Current Script path/Folder as working folder in script
::CD /d %~dp0

:::::: Template for questions
:: echo ?
:: set /P c=Insert Question Here[Y/N]?
:: if /I "%c%" EQU "Y" goto :Option1
:: if /I "%c%" EQU "N" goto :Option2
::
:: :Option1
:: command / action here
::
:: :Option2
:: command /action here
::::: END of Template

::Registry query for settings to modify or specify next step
::REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\blahblahblahpathhere" /v registryentrytocheckhere | Find "0x0"
::IF %ERRORLEVEL% == 1 goto option1
::IF %ERRORLEVEL% == 0 goto option2
:: :option1
:: action string here
:: :option2
:: alt action string here
