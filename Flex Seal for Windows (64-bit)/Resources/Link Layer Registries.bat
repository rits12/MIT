@echo off
color 0a
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Link-Layer Topology Discovery
echo.

rem Turn on Mapper I/O (LLTDIO) driver
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LLTD" /v "AllowLLTDIOOndomain" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LLTD" /v "AllowLLTDIOOnPublicNet" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LLTD" /v "EnableLLTDIO" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LLTD" /v "ProhibitLLTDIOOnPrivateNet" /t REG_DWORD /d 0 /f

rem Turn on Responder (RSPNDR) driver
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LLTD" /v "AllowRspndrOndomain" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LLTD" /v "AllowRspndrOnPublicNet" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LLTD" /v "EnableRspndr" /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\LLTD" /v "ProhibitRspndrOnPrivateNet" /t REG_DWORD /d 0 /f

rem automatically pushes changes to the group
Gpupdate /force

pause

cls