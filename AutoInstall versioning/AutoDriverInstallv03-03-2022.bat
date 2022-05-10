@ECHO OFF
CD /d %~dp0
ECHO ===================================================================================

ECHO Script to Query Model from WMIC and begin silent driver installation

    setlocal enableextensions disabledelayedexpansion

    for /f "tokens=2 delims==" %%a in (
    'wmic computersystem get model /value'
) do for /f "delims=" %%b in ("%%~a") do (
    if /i "%%~b"=="Inspiron 5379" goto Inspiron5379

    if /i "%%~b"=="Latitude 5290" goto Latitude5490
    if /i "%%~b"=="Latitude 5490" goto Latitude5490
    if /i "%%~b"=="Latitude 5590" goto Latitude5490

    if /i "%%~b"=="Latitude 5280" goto Latitude5580
    if /i "%%~b"=="Latitude 5288" goto Latitude5580
    if /i "%%~b"=="Latitude 5480" goto Latitude5580
    if /i "%%~b"=="Latitude 5488" goto Latitude5580
    if /i "%%~b"=="Latitude 5580" goto Latitude5580
    if /i "%%~b"=="Precision 3520" goto Latitude5580

    if /i "%%~b"=="Precision 3530" goto Latitude5591
    if /i "%%~b"=="Precision 3541" goto Latitude5591
    if /i "%%~b"=="Latitude 5401" goto Latitude5591
    if /i "%%~b"=="Latitude 5501" goto Latitude5591
    if /i "%%~b"=="Latitude 5491" goto Latitude5591
    if /i "%%~b"=="Latitude 5591" goto Latitude5591

    if /i "%%~b"=="Latitude 7320" goto Latitude7420
    if /i "%%~b"=="Latitude 7420" goto Latitude7420
    if /i "%%~b"=="Latitude 7520" goto Latitude7520

    if /i "%%~b"=="Latitude 7400 2-in-1" goto Latitude7400

    if /i "%%~b"=="OptiPlex 7040" goto OptiPlex7040

    if /i "%%~b"=="OptiPlex 7050" goto OptiPlex7050
    
)

    echo Drivers for your device were not found 
    goto :Oops

:Oops
    echo Start of script for missing model ["%%~b"]
ECHO Hi... I think you have a mismatched folder model or referrence... edit your script and check your folders!
goto DellCommandUpdate


REM *********************************************************************************************5379
:Inspiron5379
ECHO ===================================================================================
echo Start of script for model [Inspiron 5379]
echo .
PAUSE
ECHO Switching to model specific drivers install folder...
CD ".\Base Installs\firmware and drivers\Inspiron 13-5379-P69G"
ECHO Installing Drivers...

REM The following command executes all files in folders and subfolders silently, one at a time and in order
FOR /r "." %%a in (*.exe) do "%%~fa" -s

ECHO "Done, continuing to Dell Command Update Installation"
CD..

goto DellCommandUpdate

REM *********************************************************************************************5290-5490-5590
:Latitude5490
ECHO ===================================================================================
echo Start of script for model [Latitude 5290-5490-5590]
echo .
PAUSE
ECHO Switching to model specific drivers install folder...
CD ".\Base Installs\firmware and drivers\Latitude 5290-5490-5590"
ECHO Installing Drivers...

REM The following command executes all files in folders and subfolders silently, one at a time and in order
FOR /r "." %%a in (*.exe) do "%%~fa" -s

ECHO "Done, continuing to Dell Command Update Installation"
CD..

goto DellCommandUpdate


REM *********************************************************************************************5580
:Latitude5580
ECHO ===================================================================================
echo Start of script for model [Latitude 5580]
ECHO .
PAUSE
ECHO Switching to model specific drivers install folder
CD ".\Base Installs\firmware and drivers\Latitude 5280-5288-5480-5488-5580 and Precision 3520"
ECHO Installing Drivers...

REM The following command executes all files in folders and subfolders silently, one at a time and in order
FOR /r "." %%a in (*.exe) do "%%~fa" -s

ECHO "Done, continuing to Dell Command Update Installation"
CD..

goto DellCommandUpdate

REM *********************************************************************************************3530-3541-5491-5591-5401-5501
:Latitude5591
ECHO ===================================================================================
echo Start of script for model [Precision 3530-3541 Latitude 5401-5501-5491-5591]
echo  
PAUSE
ECHO Switching to model specific drivers install folder...
CD ".\Base Installs\Firmware and Drivers\Precision 3530-3541 Latitude 5401-5501"
ECHO Installing Drivers...

REM The following command executes all files in folders and subfolders silently, one at a time and in order
FOR /r "." %%a in (*.exe) do "%%~fa" -s

ECHO "Done, continuing to Dell Command Update Installation"
CD..

goto DellCommandUpdate


REM *********************************************************************************************7400
:Latitude7400
ECHO ===================================================================================
echo Start of script for model [Latitude 7400 2-in-1]
PAUSE
ECHO Switching to model specific drivers install folder
CD ".\Base Installs\Firmware and Drivers\Latitude 7400 2-in-1"
ECHO Installing Drivers...

REM The following command executes all files in folders and subfolders silently, one at a time and in order
FOR /r "." %%a in (*.exe) do "%%~fa" -s

ECHO "Done, continuing to Dell Command Update Installation"
CD..

goto DellCommandUpdate


REM *********************************************************************************************7420
:Latitude7420
ECHO ===================================================================================
echo Start of script for model [Latitude 7420]
PAUSE
ECHO Switching to model specific drivers install folder
CD ".\Base Installs\Firmware and Drivers\Latitude 7320-7420-7520"
ECHO Installing Drivers...

REM The following command executes all files in folders and subfolders silently, one at a time and in order
FOR /r "." %%a in (*.exe) do "%%~fa" -s

ECHO "Done, continuing to Dell Command Update Installation"
CD..

goto DellCommandUpdate


REM *********************************************************************************************7040
:OptiPlex7040
echo Start of script for model [Optiplex 7040]
ECHO  
PAUSE
ECHO Switching to model specific drivers install folder
CD ".\Base Installs\firmware and drivers\Optiplex 7040"
ECHO Installing Drivers...

REM The following command executes all files in folders and subfolders silently, one at a time and in order
FOR /r "." %%a in (*.exe) do "%%~fa" -s

ECHO "Done, continuing to Dell Command Update Installation"
CD..

goto DellCommandUpdate


REM *********************************************************************************************7050
:OptiPlex7050
echo Start of script for model [Optiplex 7050]
PAUSE
ECHO Switching to model specific drivers install folder
CD ".\Base Installs\firmware and drivers\Optiplex 7050"
ECHO Installing Drivers...

REM The following command executes all files in folders and subfolders silently, one at a time and in order
FOR /r "." %%a in (*.exe) do "%%~fa" -s

ECHO "Done, continuing to Dell Command Update Installation"
CD..

goto DellCommandUpdate


ECHO *****************************************************************************Dell Command Update
:DellCommandUpdate
ECHO Installing Net 35
DISM.EXE /Online /Add-Package /PackagePath:"d:\base installs\Net\Microsoft-Windows-NetFx3-OnDemand-Package-en-us.cab"
CD..
CD "Net"
dotnetfx35redist
net48_offline_installer_ndp48-x86-x64-allos-enu
CD..
ECHO ===================================================================================
ECHO Installing Dell Command Update
CD "firmware and drivers"
START Dell-Command-Update-Windows-Universal-Application_PWD0M_WIN_4.4.0_A00 -s
ECHO ===================================================================================


ECHO *******************************************************************************Docking Stations
ECHO Installing all Docking Station Drivers
CD "dell docking stations"
START D6000\DisplayLink-Dock-Driver_FF21H_WIN_10.1.2814.0_A04 -s
START wd15\Realtek-USB-Audio-DCH-Driver_KDGRR_WIN_6.3.9600.2299_A20_02 -s
START wd19dcs\Realtek-USB-GBE-Ethernet-Controller-Driver_WCGPP_WIN_2.45.2021.0929_A24 -s
ECHO - - - Make sure you check if the docking station firmware is updated - - - 
CD..
CD..
ECHO ===================================================================================


ECHO ********************************************************************************Software Install
:SoftwarePrompt
echo ?
	set /P c=Do you wish to update all standard software on this pc?[Y/N]?
	if /I "%c%" EQU "Y" goto SoftwareInstall
	if /I "%c%" EQU "N" goto LanguagePacks


:SoftwareInstall
Echo Begin Standard Software Installation

ECHO Installing PlotView
START PloviewENG.exe /silent
START %windir%\system32\notepad.exe "d:\base installs\Ploview Password.txt"

ECHO Installing 64-bit Java
START jre-8u311-windows-x64.exe /s
TIMEOUT 120

ECHO Installing 32-bit Java
START jre-8u311-windows-i586.exe /s
TIMEOUT 90
ECHO Adding Java exception sites list to local workstation
xcopy ".\javaSiteException\exception.sites" C:\Users\%username%\AppData\LocalLow\Sun\Java\Deployment\security\ /Y

ECHO Installing EiCoreClient Certificate to local machine for all users
CertUtil -AddStore "TrustedPublisher" "EICore.cer"

ECHO Installing ElCoreClient
START EICoreClientSetting /silent

ECHO Installing Microsoft Silverlight 
START silverlight_x64 /q /norestart

ECHO Installing Document Management System Client
START DMSFileClient.msi /quiet /norestart

ECHO Installing Citrix Dependency Microsoft Edge Web View Runtime
START MicrosoftEdgeWebView2RuntimeInstallerX64 /silent /install
TIMEOUT 30

ECHO Installing Citrix Workspace Client
START CitrixWorkspaceApp /silent

ECHO Installing CyberReason Sensor
START CybereasonSensor64_19_1_208_0 /install /quiet /norestart

ECHO Installing Cyberquery Client
START cyberquery-client-cqw-8.22-1A

ECHO Installing Zscaler
START Zscaler-windows-3.1.0.96-installer.msi /quiet /norestart

ECHO Installing eDrawings
START eDrawingsAllX64

ECHO Installing Freedom Administrator by ErroProof
CD "Freedom Software\ErrorProof\Administrator"
START setup /silent
TIMEOUT 30
CD..
ECHO Installing Freedom Workstation by ErroProof
CD "WorkStation"
START setup /silent
TIMEOUT 30

ECHO Opening ErrorProof Freedom Registry Activation Settings
START %windir%\system32\notepad.exe "d:\base installs\Freedom Software\TSTech-Hidalgo.txt"
"C:\Program Files (x86)\ErrorProof\FTCRegistrySettings.exe"
CD..
CD..
CD..

ECHO Installing Adobe Acrobat Reader 64-bit
CD "Adobe Acrobat Reader"
START AcroRdrDCx642101120039_MUI.exe /sPB /rs
TIMEOUT 90

ECHO Installing Adobe Asian language pack
start AcroRdrx64_2100120135_all_DCAsian_Language_pack.msi /passive /norestart
TIMEOUT 30

ECHO Installing MS Teams
CD..
CD "Teams"
start teams_windows_x64.exe /silent
CD..
ECHO Installing Barcode Font to all users
XCopy "Barcode font.TTF" "%windir%\Fonts" /y
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts" /v "Barcode Font (TTF)" /t REG_SZ /d "Barcode Font.ttf" /f

ECHO Updating Edge Browser
MicrosoftEdge_X64_98.0.1108.62

ECHO Loading QAD Installation Site
START iexplore.exe http://svna187.tstech.com:8080/qadhome/client/setup.html

ECHO ===================================================================================Language Packs
:LanguagePacks
ECHO Installing Windows Language Packs

REM Japanese
ECHO Installing Japanese Language
Dism /Online /Add-Capability /CapabilityName:Language.Basic~~~ja-JP~0.0.1.0
Dism /Online /Add-Capability /CapabilityName:Language.Fonts.Jpan~~~und-JPAN~0.0.1.0
Dism /Online /Add-Capability /CapabilityName:Language.Handwriting~~~ja-JP~0.0.1.0
Dism /Online /Add-Capability /CapabilityName:Language.OCR~~~ja-JP~0.0.1.0
Dism /Online /Add-Capability /CapabilityName:Language.Speech~~~ja-JP~0.0.1.0
Dism /Online /Add-Capability /CapabilityName:Language.TextToSpeech~~~ja-JP~0.0.1.0

REM Espanol(Mexico)
ECHO Installing Spanish (Mexico)
Dism /Online /Add-Capability /CapabilityName:Language.Basic~~~es-MX~0.0.1.0
Dism /Online /Add-Capability /CapabilityName:Language.Handwriting~~~es-MX~0.0.1.0
Dism /Online /Add-Capability /CapabilityName:Language.OCR~~~es-MX~0.0.1.0
Dism /Online /Add-Capability /CapabilityName:Language.Speech~~~es-MX~0.0.1.0
Dism /Online /Add-Capability /CapabilityName:Language.TextToSpeech~~~es-MX~0.0.1.0

ECHO Remember to additionally install Language Packs from Windows Settings
PAUSE 
:WindowsUpdates
ECHO Setting Time Zone to CST/CDT
tzutil /s "Central Standard Time"
ECHO Removing News and Interests from the taskbar
REG ADD HKLM\SOFTWARE\Policies\Microsoft\Windows\Feeds
REG ADD HKLM\SOFTWARE\Policies\Microsoft\Windows\Feeds\ /v ShellFeedsTaskbarViewMode /t REG_DWORD /d 2
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds"\ /v EnableFeeds /t REG_DWORD /d 0
ECHO ===================================================================================Windows Updates
ECHO ==Time for Windows Updates... 
ECHO Make sure the network is connected and authenticated then
PAUSE
ECHO Checking for new updates...
wuauclt /detectnow
ECHO Installing new updates...
wuauclt /updatenow

REM ===================================================================================MicrosoftOffice365
echo ?
set /P c=Do You want to remove and reinstall MS Office 365[Y/N]?
if /I "%c%" EQU "Y" goto :Office365Install
if /I "%c%" EQU "N" goto :End

:Office365Install
ECHO Starting TSAM O365 Shared installation...
net use \\svtxm020\o365$ /User:TS\jrucker1

REG QUERY "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT

REM IF %OS%==32BIT IF EXIST "C:\Program Files\Microsoft Office\root\Office16\EXCEL.EXE" GOTO :Updates
	
REM IF %OS%==64BIT IF EXIST "C:\Program Files (x86)\Microsoft Office\root\Office16\EXCEL.EXE" GOTO :Updates

CD /d %~dp0
CD "Base Installs\O365\Office365Corp"

ECHO Removing Office 2007 
@REM Office 2007
cd ".\Office 2007\"
setup.exe /uninstall ProPlus /config custom.xml
cd..

ECHO Removing Office 2010 Pro plus
@REM Office 2010
cd ".\Office 2010\"
setup.exe /uninstall ProPlus /config custom.xml
setup.exe /uninstall OMUI.ja-jp /config customjp.xml
cd..

ECHO Removing Office 2010 Project
cd ".\Office 2010 Project\"
setup.exe /uninstall PrjPro /config custom.xml
setup.exe /uninstall PMUI.ja-jp /config customjp.xml
cd..

ECHO Removing Office 2010 Visio
cd ".\Office 2010 Visio\"
setup.exe /uninstall Visio /config custom.xml
setup.exe /uninstall VisMUI.ja-jp /config customjp.xml
cd..

ECHO Removing Office 2013
@REM Office 2013
cd ".\Office 2013\"
setup.exe /uninstall ProPlus /config custom.xml
setup.exe /uninstall OMUI.ja-jp /config customjp.xml
cd..

ECHO Removing Office 2013 Project
cd ".\Office 2013 Project\"
setup.exe /uninstall PrjPro /config custom.xml
setup.exe /uninstall PMUI.ja-jp /config customjp.xml
cd..
ECHO Removing Office 2013 Visio
cd ".\Office 2013 Visio\"
setup.exe /uninstall VisPro /config custom.xml
setup.exe /uninstall VisMUI.ja-jp /config customjp.xml
cd..

ECHO Removing Office 2016 ProPlus
@REM Office 2016
cd ".\Office 2016\"
setup.exe /uninstall ProPlus /config custom.xml
setup.exe /uninstall OMUI.ja-jp /config customjp.xml
cd..

ECHO Removing Office 2016 Project
cd ".\Office 2016 Project\"
setup.exe /uninstall PrjPro /config custom.xml
setup.exe /uninstall PMUI.ja-jp /config customjp.xml
cd..

ECHO Removing Office 2016 Visio
cd ".\Office 2016 Visio\"
setup.exe /uninstall VisPro /config custom.xml
setup.exe /uninstall VisMUI.ja-jp /config customjp.xml
cd..

ECHO Installing Office 365 shared
@REM Install O365 bits
cd ".\O365\"
setup.exe /configure DC-Shared-config.xml
cd..


:UPDATES
ECHO Office is already installed...

ECHO Running Microsoft Office Updater
"C:\Program Files\Common Files\Microsoft Shared\ClickToRun\OfficeC2RClient.exe" /update user updatepromptuser=true forceappshutdown=true displaylevel=true


	REM ===================================================================Pending to script
:: Message to user:
::do
::x=msgbox("Please ensure the network is connected and working before continuing, Press OK to continue", 0+48, "Network Access needed to continue")
::
::Echo Current computername is
::hostname
::echo ?
:: set /P c=Do you wish to rename this computer[Y/N]?
:: if /I "%c%" EQU "Y" goto Rename
:: if /I "%c%" EQU "N" goto END

::PCrename
::shutdown -r -t 0

::END
::REM wmic computersystem where name="%computername%" call rename= "%newhostname%"

::echo ?
:: set /P c=Do you wish to restart now and apply all the new changes[Y/N]?
:: if /I "%c%" EQU "Y" goto Reboot
:: if /I "%c%" EQU "N" goto END

::Reboot
::shutdown -r -t 0

:END
ECHO Script Completed.  Have a Nice Day!  ~Joshua Rucker
PAUSE

	REM ===================================================================Template Modules


::::::Set Current Script path/Folder as working folder in script
::CD /d %~dp0


:::::: Template for questions
:: echo ?
:: set /P c=Insert Question Here[Y/N]?
:: if /I "%c%" EQU "Y" goto :Option1
:: if /I "%c%" EQU "N" goto :Option2

:: :Option1
:: command / action here
::
:: :Option2
:: command /action here
::::::: END of Template
