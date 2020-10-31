@echo off


color 0d
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Secure Internet Connections
echo.
echo --/Security Level to High
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "MinLevel" /t REG_DWORD /d 0x00012000 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "CurrentLevel" /t REG_DWORD /d 0x00012000 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\Zones\3" /v "RecommendedLevel" /t REG_DWORD /d 0x00012000 /f
echo ----/GO TO Internet Properties...Security..."reset all zones to default level"...Apply**
pause
inetcpl.cpl
pause
echo.
echo --/Privacy Settings
echo ----/GO TO Internet Properties...Privacy tab...Advanced..."Block" for both first-party and third-party cookies...ok
echo ----/GO TO Internet Properties...Privacy tab..."Never allow websites to request your physical location"...check
echo ----/GO TO Internet Properties...Privacy tab..."Turn on Pop-up Blocker"...check
echo ----/GO TO Internet Properties...Privacy tab..."Disable toolbars and extensions when InPrivate Browsing Starts"...check
echo ----/Apply**
pause
inetcpl.cpl
pause



cls