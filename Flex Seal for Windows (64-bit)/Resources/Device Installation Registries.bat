@echo off
color 0c
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Device Installation
echo.

rem Allow remote access to the PnP interface
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "AllowRemoteRPC" /t REG_DWORD /d 0 /f

rem Do not create system restore point when new device driver installed
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "DisableSystemRestore" /t REG_DWORD /d 0 /f

rem Do not send a Windows Error Report when a generic driver is installed on a device
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DeviceInstall\Settings" /v "DisableSendGenericDriverNotFoundToWER" /t REG_DWORD /d 1 /f

rem automatically pushes changes to the group
Gpupdate /force
pause

cls