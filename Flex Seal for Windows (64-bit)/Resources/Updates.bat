@echo off
color 0a
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Download Service Packs and Windows Updates
echo.
net start wuauserv
start ms-settings:windowsupdate
echo.
pause

cls