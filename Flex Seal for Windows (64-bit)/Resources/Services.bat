@echo off
color 0f
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Services
echo.
echo --/Disable unnecessary services
echo. 

echo ----/Disable IIS
iisreset /stop
iisreset /disable
echo.

echo ----/Disable NetMeeting Remote Desktop Sharing -VoIP
net stop mnmsrvc
sc config mnmsrvc start= disabled
echo.

echo ----/Disable Remote Desktop Help Session Manager
net stop RDSessMgr
sc config RDSessMgr start= disabled
echo.

echo ----/Disable Remote Registry
net stop RemoteRegistry
sc config RemoteRegistry start= disabled
echo.

echo ----/Disable Routing and Remote Access
net stop RemoteAccess
sc config RemoteAccess start= disabled
echo.

echo ----/Disable Simple File Sharing
rem needs configuration **
echo.

echo ----/Disable SSDP Discovery Service
net stop SSDPSRV
sc config SSDPSRV start= disabled
echo.

echo ----/Disable Telnet
net stop TlntSvr
sc config TlntSvr start= disabled
echo.

echo ----Disable FTP 
net stop Msftpsvc
sc config Msftpsvc start= disabled
echo.

echo ----/Disable Universal Plug and Play Device Host
net stop upnphost
sc config upnphost start= disabled
echo.

echo ----/Disable windows messenger service
net stop Messenger
sc config Messenger start= disabled

echo ----/Disable 
net stop NetTcpPortSharing
sc config NetTcpPortSharing start= disabled

pause

echo ----/Many of these more than likely did not work properly... this is due to certain configurations
echo ----/To be safe, GO TO Programs and Features\Turn Windows Features On or Off
echo ----/Make sure "Internet Information Services (and everything inside including FTP Server etc.) is unchecked
echo ----/Make sure "Interent Information Services Hostable Web Core" is unchecked
echo ----/Make sure "Simple TCPIP services," "Telnet Client," and "TFTP Client" are unchecked

pause
appwiz.cpl

pause



cls