@echo off
color 0d
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Configure System Startup
echo.
echo --/Remove any unnecessary startup processes
pause
%windir%\system32\Taskmgr.exe /7 /startup
pause


cls
