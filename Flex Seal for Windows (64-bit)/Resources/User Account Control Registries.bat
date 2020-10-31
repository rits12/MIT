@echo off
color 0d
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/User Account Control
echo.

rem Admin Approval Mode for the Built-in Administrator account
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "FilterAdministratorToken" /t REG_DWORD /d 1 /f

rem Behavior of the elevation prompt for administrators in Admin Approval Mode
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorAdmin" /t REG_DWORD /d 3 /f

rem Behavior of the elevation prompt for standard users
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ConsentPromptBehaviorUser" /t REG_DWORD /d 0 /f

rem Detect application installations and prompt for elevation
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableInstallerDetection" /t REG_DWORD /d 1 /f

rem Only elevate executables that are signed and validated
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ValidateAdminCodeSignatures" /t REG_DWORD /d 0 /f

rem Only elevate UIAccess applications that are installed in secure locations
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableSecureUIAPaths" /t REG_DWORD /d 1 /f

rem Run all administrators in Admin Approval Mode
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 1 /f

rem Switch to the secure desktop when prompting for elevation
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "PromptOnSecureDesktop" /t REG_DWORD /d 1 /f

rem Virtualize file and registry write failures to per-user locations
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableVirtualization" /t REG_DWORD /d 1 /f

rem automatically pushes changes to the group
Gpupdate /force
pause

cls