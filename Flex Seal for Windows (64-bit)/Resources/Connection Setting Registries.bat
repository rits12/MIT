@echo off
color 0d
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Network Connection Settings
echo.

rem Prohibit installation and configuration of Network Bridge on your DNS domain network
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Network Connections" /v "NC_AllowNetBridge_NLA" /t REG_DWORD /d 0 /f

rem Prohibit use of Internet Connection Firewall on your DNS domain network	
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Network Connections" /v "NC_PersonalFirewallConfig" /t REG_DWORD /d 0 /f

rem Prohibit use of Internet Connection Sharing on your DNS domain network
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Network Connections" /v "NC_ShowSharedAccessUI" /t REG_DWORD /d 0 /f



rem automatically pushes changes to the group
Gpupdate /force
pause

cls