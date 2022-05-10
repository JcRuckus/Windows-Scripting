@ECHO OFF
CD /d %~dp0
ECHO ===================================================================================

ECHO Script to Query Model from WMIC and begin silent driver installation

    setlocal enableextensions disabledelayedexpansion

    for /f "tokens=2 delims==" %%a in (
    'wmic computersystem get model /value'
) do for /f "delims=" %%b in ("%%~a") do (
    if /i "%%~b"=="Inspiron 5379" goto Inspiron5379 
    if /i "%%~b"=="Latitude 5290" goto Latitude5290
    if /i "%%~b"=="Latitude 5580" goto Latitude5580
    if /i "%%~b"=="Latitude 7420" goto Latitude7420
    if /i "%%~b"=="OptiPlex 7040" goto OptiPlex7040
    if /i "%%~b"=="OptiPlex 7050" goto OptiPlex7050
)

    echo Drivers for your device were not found
    goto :Dell Command Update

:test4
    echo Start of script for model [%%~b]
ECHO Hi... I think you have a mismatched model... edit your script!
REM CD /d %~dp0



REM *********************************************************************************************5379
:Inspiron5379
ECHO ===================================================================================
echo Start of script for model [Inspiron 5379]
echo .
PAUSE
ECHO Switching to model specific drivers install folder...
CD ".\Base Installs\firmware and drivers\Inspiron 13-5379-P69G"
ECHO Installing Drivers...
START Dell-Mobile-Connect-Driver_RYX6X_WIN_4.1.7498_A00 -s
START Dell-Power-Manager-Service_KDHHR_WIN64_3.10.0_A00 -s
START Dell-SmartByte-Application_P4KWR_WIN_3.1.995_A00_01 -s
START Dell-SupportAssist-OS-Recovery-Plugin-for-Dell-Update_JVFGH_WIN_5.4.1.14954_A00 -s
START Intel-Chipset-Device-Software_5MPRF_WIN_10.1.18121.8164_A09 -s
START Intel-Dynamic-Platform-and-Thermal-Framework_74P16_WIN_8.3.10209.6897_A12 -s
START Intel-HID-Event-Filter-Driver_33CDY_WIN_2.2.1.377_A11_04 -s
START Intel-Integrated-Sensor-Hub-Driver_3VFTP_WIN_3.10.100.3429_A00 -s
START Intel-Management-Engine-Interface-Driver_V0N4T_WIN_1932.12.0.1298_A03 -s
START Intel-Serial-IO-Driver_6CYP4_WIN_30.100.1943.2_A09_04 -s
START Intel-UHD-Graphics-Driver_5WTGR_WIN_27.20.100.9664_A11 -s
START Intel-Virtual-Buttons-Driver_MCFJ3_WIN_1.1.1.22_A02 -s
START Qualcomm-QCA61x4A-QCA9377-Wi-Fi-and-Bluetooth-Driver_V5JJK_WIN_12.0.0.1118_A45_04 -s
START Realtek-High-Definition-Audio-Driver_DXXVT_WIN_6.0.1.8184_A00 -s
START Realtek-IR-Camera-Driver_43VGM_WIN_10.0.15063.11275_A01_01 -s
START Realtek-Memory-Card-Reader-Driver_66CVW_WIN_10.0.18362.31252_A03_02 -s
START Serial-ATA_Driver_6W1FP_WN32_17.0.2.1076_A00_01 -s 
cd BIOS
ECHO Running BIOS Upgrade utility
START Inspiron_5379_5579_7773_1.18.0
ECHO Running SSD Firmware Upgrade Utility
CD..
CD SSD Firmware
START Micron 1100 DKN86_ZPE.exe
ECHO Done, continuing to Dell Command Update Installation
goto :Dell Command Update
REM *********************************************************************************************5580
:Latitude5580
ECHO ===================================================================================
echo Start of script for model [Latitude 5580]
ECHO .
PAUSE
ECHO Switching to model specific drivers install folder
CD ".\Base Installs\firmware and drivers\Latitude 5280-5288-5480-5488-5580 and Precision 3520"
ECHO Installing Drivers...
START Chipset_Driver_DFDP5_WN32_4.10.0079_A02_01 -s
START Dell-Touchpad-Driver_2VV2N_WIN_10.3201.101.216_A10 -s
Intel-9560-9260-8265-7265-3165-Bluetooth-UWD-Driver_XY44M_WIN64_22.100.0.3_A33 -s
START Intel-9560-9260-8265-7265-3165-Wi-Fi-Driver_P5HJJ_WIN_22.100.0.3_A29 -s
START Intel-Management-Engine-Components-Installer_YDF1N_WIN_2141.15.0.2511_A09 -s
START Intel-HID-Event-Filter-Driver_33CDY_WIN_2.2.1.377_A11_04 -s
START Intel-Rapid-Storage-Technology-Driver-and-Management_2PMT8_WIN_16.8.3.1004_A06 -s
START Intel-Thunderbolt-Controller-Driver_TBT79_WIN_17.4.79.510_A12 -s
START Intel-UHD-Graphics-Driver_P93CC_WIN_26.20.100.8142_A17_02 -s
START Realtek-Memory-Card-Reader-Driver_R16KJ_WIN_10.0.17763.21313_A02_02 -s
START Realtek-USB-Audio-Driver_RRPCC_WIN_6.3.9600.2250_A16 -s
START Realtek-High-Definition-Audio-Driver_88XXX_WIN_6.0.8895.1_A23_01 -s
START Intel-PCIe-Ethernet-Controller-Driver_VP20T_WIN_24.1.0.0_A13_01 -s
START Intel_TBT3_FW_UPDATE_NVM46_255NC_A07_4.46.155.001
START Dell-SupportAssist-OS-Recovery-Plugin-for-Dell-Update_RH18Y_WIN_5.5.1.16143_A00 -s

ECHO Upgrading BIOS... 
CD BIOS
START Latitude_5X80_Precision_3520_1.23.1
goto :Dell Command Update
REM *********************************************************************************************7420
:Latitude7420
ECHO ===================================================================================
echo Start of script for model [Latitude 7420]
ECHO .
PAUSE
ECHO ===================================================================================
ECHO Switching to model specific drivers install folder
CD ".\Base Installs\Firmware and Drivers\Latitude 7320-7420-7520"
ECHO Installing Drivers...
START Dell-Power-Manager-Service_KDHHR_WIN64_3.10.0_A00 -s
START Intel-Bluetooth AX211-AX210-AX200-AX201-9560-9260-9462-8265-3165_FVF95_WIN64_22.100.0.3_A19_03 -s
START Intel-Management-Engine-Components-Installer_GH3XV_WIN_2117.15.0.2272_A04_03 -s
START Intel-Thunderbolt-Controller-Driver_TBTC0_WIN_1.41.1193.0_A11 -s
START Intel-UHD-Iris-Xe-Graphics-Driver_Y80C3_WIN64_30.0.100.9955_A07_01 -s
START Intel-Wi-Fi AX211-AX210-AX201-AX200-9560-9260-9462-8265-3165_9G4G4_WIN_22.100.0.3_A21_02 -s
START Realtek-High-Definition-Audio-Driver_WWXR2_WIN_6.0.9261.1_A08 -s
START Realtek-USB-GBE-Ethernet-Controller-Driver_WCGPP_WIN_2.45.2021.0929_A24 -s
START Waves-MaxxAudio-Pro-Application_MT722_WIN64_4.0.47.0_A06 -s
ECHO Upgrading BIOS... 
CD BIOS
START BIOS\Latitude_7X20_1.14.1
goto :Dell Command Update
REM *********************************************************************************************7040
:OptiPlex7040
echo Start of script for model [Optiplex 7040]
ECHO  
PAUSE
ECHO Switching to model specific drivers install folder
CD ".\Base Installs\firmware and drivers\Optiplex 7040"
ECHO Installing Drivers...
START 7050_Application_H42K1_WN32_1.0.0.0_A00 -s
START Chipset_Driver_54MFM_WN64_1.1.0.22_A02 -s
START Intel_ME_Firmware_Updater32_Corp_H_11.8.50.3425 -s
START Intel-Chipset-Device-Software_HMDR4_WIN_10.1.1.38_A05_06 -s
START Intel-HD-Graphics-Driver_2XXY7_WIN_27.20.100.9664_A00_01 -s
START Intel-Management-Engine-Components-Installer_YDF1N_WIN_2141.15.0.2511_A09 -s
START Intel-PCIe-Ethernet-Controller-Driver_VP20T_WIN_24.1.0.0_A13_01 -s
START Intel-Rapid-Storage-Technology-Driver_62C56_WIN64_17.9.6.1019_A04_01 -s
START Intel-Ready-Mode-Technology-Application_2VP3G_WIN_1.1.70.529_A01_01 -s
START Intel-Serial-IO-Driver_6CYP4_WIN_30.100.1943.2_A09_04 -s
START Realtek-High-Definition-Audio-Driver_88WWW_WIN_6.0.1.8555_A18_10 -s
CD BIOS
goto :Dell Command Update
REM *********************************************************************************************7050
:OptiPlex7050
echo Start of script for model [Optiplex 7050]
PAUSE
ECHO Switching to model specific drivers install folder
CD ".\Base Installs\firmware and drivers\Optiplex 7050"
ECHO Installing Drivers...
START Intel-Chipset-Device-Software_HMDR4_WIN_10.1.1.38_A05_06.exe -s
START Intel-Rapid-Storage-Technology-Driver_62C56_WIN64_17.9.6.1019_A04_01.exe -s
START Intel-Serial-IO-Driver_6CYP4_WIN_30.100.1943.2_A09_04.exe -s
START Intel-HD-Graphics-Driver_2XXY7_WIN_27.20.100.9664_A00_01.exe -s
START Chipset_Driver_54MFM_WN64_1.1.0.22_A02.exe -s
START 7050_Application_H42K1_WN32_1.0.0.0_A00.exe -s
START Intel-Management-Engine-Components-Installer_YDF1N_WIN_2141.15.0.2511_A09.exe -s
START Realtek-High-Definition-Audio-Driver_88WWW_WIN_6.0.1.8555_A18_10.exe -s
START Intel-Ready-Mode-Technology-Application_2VP3G_WIN_1.1.70.529_A01_01.exe -s
START Intel_ME_Firmware_Updater32_Corp_H_11.8.50.3425.exe -s
START Intel-PCIe-Ethernet-Controller-Driver_VP20T_WIN_24.1.0.0_A13_01.exe -s
CD BIOS
START OptiPlex_7050_1.19.0.exe
goto :Dell Command Update

ECHO *********************************************************************************Dell Command Update
:Dell Command Update
ECHO ===================================================================================
ECHO Installing Dell Command Update
CD..
CD ".\Base Installs\Firmware and Drivers"
START Dell-Command-Update-Windows-Universal-Application_PWD0M_WIN_4.4.0_A00.exe -s
ECHO ===================================================================================
ECHO ************************************************************************************Docking Stations
ECHO Installing all Docking Station Drivers
CD "dell docking stations"
START D6000\DisplayLink-Dock-Driver_FF21H_WIN_10.1.2814.0_A04 -s

START wd15\Realtek-USB-Audio-DCH-Driver_KDGRR_WIN_6.3.9600.2299_A20_02 -s

START wd19dcs\Realtek-USB-GBE-Ethernet-Controller-Driver_WCGPP_WIN_2.45.2021.0929_A24 -s
ECHO - - - Make sure you check if the docking station firmware is updated - - - 
ECHO ===================================================================================
ECHO ************************************************************************************Software Install
Echo Begin Standard Software Installation
cd..
cd..
ECHO Installing PlotView
START PloviewENG.exe
START %windir%\system32\notepad.exe "d:\base installs\Ploview Password.txt"
ECHO Installing 64-bit Java
START jre-8u311-windows-x64.exe /s
PAUSE
ECHO Installing 32-bit Java
START jre-8u311-windows-i586.exe /s
PAUSE
ECHO Installing ElCoreClient
START EICoreClientSetting
ECHO Installing Microsoft Silverlight
START silverlight_x64
REM script to install cert to local computer
ECHO Installing Barcode font to all users
REM script to add font here
START DMSFileClient.msi
START CitrixWorkspaceApp
START CybereasonSensor64_19_1_208_0
START "cyberquery client-cqw-8.22-1A.exe"
START Zscaler-windows-3.1.0.96-installer.msi
START eDrawingsAllX64
ECHO Installing Freedom by ErroProof
CD "Freedom Software\ErrorProof\Administrator"
START setup /s
PAUSE
CD..
CD "WorkStation"
START setup /s
PAUSE
CD..
CD..
CD..
ECHO Installing Adobe Acrobat Reader 64-bit
CD "Adobe Acrobat Reader"
START AcroRdrDCx642101120039_MUI.exe /sPB /rs
pause
ECHO Installing Adobe Asian language pack
start AcroRdrx64_2100120135_all_DCAsian_Language_pack.msi /passive /norestart
PAUSE
ECHO Installing MS Teams
CD..
CD "Teams"
start teams_windows_x64.exe
ECHO Installing .Net 3.5
DISM.EXE /Online /Add-Package /PackagePath:"d:\base installs\.Net\Net35\Microsoft-Windows-NetFx3-OnDemand-Package-en-us.cab"
CD..
CD ".Net\net35"
START dotnetfx35redist
CD..
CD ".net"
START ".net4.8 offline installer ndp48-x86-x64-allos-enu.exe"
REM Installing QAD
REM start setup
PAUSE
ECHO ===================================================================================
ECHO Script Completed.  Have a Nice Day!  ~Joshua Rucker
PAUSE


