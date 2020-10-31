@echo off
color 0a
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Local Policy
echo.

echo --/Set auditing for Logon Events
auditpol /set /category:"Logon/Logoff" /failure:enable
echo.

echo --/Set auditing for Account Management
auditpol /set /category:"Account Management" /failure:enable
echo.

echo --/Set auditing for Directory Service Access
auditpol /set /category:"DS Access" /success:enable
echo.

echo --/Set auditing for Account Logon Events
auditpol /set /category:"Account Logon" /failure:enable
echo.

echo --/Set auditing for Obejct Access
auditpol /set /category:"Object Access" /success:enable
echo.

echo --/Set auditing for Policy Change
auditpol /set /category:"Policy Change" /failure:enable
echo.

echo --/Set auditing for Privilege Use
auditpol /set /category:"Privilege Use" /success:enable
echo.

echo --/Set auditing for Process Tracking
auditpol /set /category:"Detailed Tracking" /failure:enable
echo.

echo --/Set auditing for System Events
auditpol /set /category:"System" /failure:enable
echo.



rem automatically pushes changes to the group
Gpupdate /force
pause



cls