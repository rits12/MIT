@echo off
color 0b
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Default applications
echo.
set /p a=Do you want to open default applications?(y/n):
IF "%a%"=="y" start ms-settings:defaultapps
echo.
pause

cls