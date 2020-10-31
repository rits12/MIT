@echo off
color 0d
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Driver Installation and Group Policy Client-Side Extensions
echo.

rem Turn Off Windows Update Device Driver Search Prompt
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DriverSearching" /v "DontPromptForWindowsUpdate" /t REG_DWORD /d 1 /f

rem Registry Policy
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Group Policy\{35378EAC-683F-11D2-A89A-00C04FBBCFA2}" /v "NoGPOListChanges" /t REG_DWORD /d 0 /f

rem automatically pushes changes to the group
Gpupdate /force
pause

cls