@echo off
color 0c
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Malware Protection
echo.
C:\"Program Files"\"Windows Defender"\MpCmdRun.exe -scan -1
pause

cls