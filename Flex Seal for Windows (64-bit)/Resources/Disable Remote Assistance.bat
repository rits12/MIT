@echo off
color 0c
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Disable Dangerous Features
echo.
echo --/Disable Remote Assistance
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Remote Assistance" /v "fAllowToGetHelp" /t REG_DWORD /d 0 /f
netsh advfirewall firewall set rule group="Remote Assistance" new enable=no
pause


cls
