@echo off

color 0d
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Account Management
echo.
echo --/Update Passwords from the README

:again
set /p user=Enter username: 
net user "%user%" *
set /p more=Again?(y/n):
IF "%more%"=="y" GOTO again
echo.
echo.

echo --/Remove the "Guest" User
net user guest /active:no
echo.

echo --/Remove the "Administrator" User
net user administrator /active:no
echo.

echo --/Remove the "defaultAccount" User
net user defaultaccount /active:no
echo.


echo --/Kill Unwanted Users
echo.
echo ----/Write down deleted usernames
echo.
pause
:killmore
NET user
set /p dead=Enter user to delete:
net user "%dead%" /DELETE
set /p more=More to delete?(y/n):
IF "%more%"=="y" GOTO killmore


echo.
echo --/Downgrade unauthorized administrators
pause
echo.
:exile
echo.
NET localgroup Administrators
echo.
set /p badmin=Enter administrator to downgrade:
net localgroup Administrators "%badmin%" /delete
set /p more=Exile more administrators?(y/n):
IF "%more%"=="y" GOTO exile
echo.


echo --/Promote standard users to administrator status
pause
echo.
:promote
echo.
NET localgroup Users
echo.
set /p goodadmin=Enter user to promote:
net localgroup Administrators "%goodadmin%" /add
set /p more=Promote more administrators?(y/n):
IF "%more%"=="y" GOTO promote
echo.


echo --/Create missing accounts
pause
echo.
:creation
echo.
set /p newuser=Enter new username:
net user "%newuser%" * /add
set /p type=Is "%newuser%" an Administrator?(y/n):
IF "%type%"=="y" net localgroup Administrators "%newuser%" /add

set /p firse=Create more users?(y/n):
IF "%firse%"=="y" GOTO creation


echo.
echo --/Require CONTROL+ALT+DELETE on login
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "DisableCAD" /t REG_DWORD /d 0 /f
pause


cls