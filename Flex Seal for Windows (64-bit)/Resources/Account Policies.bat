@echo off
color 0f
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Account Policies
echo.

echo --/Set maximum password age(90 recommended)
set /p max=Enter maximum password age:
net accounts /maxpwage:%max%
echo.


echo --/Set minimum password age(10-30 recommended)
set /p min=Enter minimum password age:
net accounts /minpwage:%min%
echo.


echo --/Set minimum password length(10 recommended)
set /p minlength=Enter minimum password length:
net accounts /minpwlen:%minlength%
echo.


echo --/Set account lockout duration(30 recommended)
set /p loutd=Enter account lockout duration:
net accounts /lockoutduration:%loutd%
echo.


echo --/Set account lockout threshold(5 or higher recommended)(failed attempts for login)
set /p thresh=Enter account lockout threshold:
net accounts /lockoutthreshold:%thresh%
echo.


echo --/Reset account lockout counter after...(recommended 30)
set /p tries=Enter time for account lockout counter reset:
net accounts /lockoutwindow:%tries%
echo.

echo --/Enable password complexity requirement/Disable reversible encryption
echo ----/GO TO Security Settings\Account Policies\Password Policy\Enable Complexity Requirement and Disable Reversible Encryption
pause
secpol.msc
pause
 
echo.
echo --/Check to make sure every account has a secure password set, I.e. no blanks(even current user needs one!)
echo ----/Be sure to write down new passwords that are not from the readme
echo ----/GO TO User Accounts\Manage Another Account
pause
control userpasswords
pause


cls 