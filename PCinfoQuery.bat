@ECHO OFF

ECHO Script to get computer information remotely over the network

:request
ECHO __________________________________________________________________
set /P hostname="Enter the device hostname or IP: "

wmic /user:jrucker1@tstech.com /password:Skippy70!@ /node: %hostname% csproduct get vendor,name,identifyingnumber

wmic /user:jrucker1@tstech.com /password:Skippy70!@ /node: %hostname% computersystem get username


set /P c=Do you wish to acquire info from an additional device[Y/N]?
if /I "%c%" EQU "Y" goto :request
if /I "%c%" EQU "N" goto :end


:end
exit



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
