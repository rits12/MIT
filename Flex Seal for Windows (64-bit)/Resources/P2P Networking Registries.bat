@echo off
color 0c
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Turn Off Microsoft Peer-to-Peer Networking Services
echo.


reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Peernet" /v "Disabled" /t REG_DWORD /d 1 /f


rem automatically pushes changes to the group
Gpupdate /force
pause

cls