@echo off

color 0c
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Windows Firewall
echo.

echo --/Set Firewall on for Home, Work, and Public
netsh advfirewall set allprofiles state on
echo.

echo --/Block all incoming connections, including allowed programs
netsh advfirewall set allprofiles firewallpolicy blockinboundalways,allowoutbound
echo.

echo --/Notify when firewall blocks new program
netsh firewall set notifications mode = enable profile = all
echo.

echo --/Add exceptions to outbound firewall (if necessary)
echo ----/In Windows Defender Firewall With Advanced Security, view "Outbound Rules"
echo ----/Do not touch "Core Networking"
pause
wf.msc
pause

echo.
echo --/Disable File and Printer Sharing
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=No
REG add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoAddPrinter /t REG_DWORD /d 1 /f
echo.

echo --/Disable Remote Assistance
netsh advfirewall firewall set rule group="Remote Assistance" new enable=No
echo.

echo --/Disable Remote Desktop
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f
echo.

echo --/Disable Network Discovery
netsh advfirewall firewall set rule group="Network Discovery" new enable=No
pause

echo --/Investigate Security and Maintenance Settings
pause
wscui.cpl
pause


cls