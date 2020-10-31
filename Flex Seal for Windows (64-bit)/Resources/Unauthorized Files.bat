@echo off
color 0a
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Delete Suspicious Files
echo.
echo --/Write down anything deleted!

echo.
echo ----/Look in system and system32 for programs with recent timestamps (sort by date)
echo ----/(More than likely not necessary)
pause
start c:\windows\system32
start c:\windows\system
pause

echo.
echo ----/Look in program files for any suspicious programs
pause
start c:\PROGRA~1
pause

echo.
echo ----/Look for shared folders
echo ----/GO TO Shared Folders\Shares and check for any illegal sharing
pause
fsmgmt.msc
pause

cls