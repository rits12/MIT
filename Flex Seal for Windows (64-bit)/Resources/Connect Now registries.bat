@echo off
color 0a
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Windows Connect Now
echo.

rem Configuration of Wireless Settings Using Windows Connect Now
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WCN\Registrars" /v "DisableFlashConfigRegistrar" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WCN\Registrars" /v "DisableInBand802DOT11Registrar" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WCN\Registrars" /v "DisableUPnPRegistrar" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WCN\Registrars" /v "DisableWPDRegistrar" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WCN\Registrars" /v "EnableRegistrars" /t REG_DWORD /d 0 /f

rem Prohibit Access of the Windows Connect Now Wizards
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WCN\UI" /v "DisableWcnUi" /t REG_DWORD /d 1 /f

rem automatically pushes changes to the group
Gpupdate /force
pause

cls