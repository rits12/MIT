@echo off
color 0f
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Logon & Sleep Settings & Remote Assistance & Remote Procedure Call & Disable Components Setting
echo.


rem Always Use Classic Logon
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "LogonType" /t REG_DWORD /d 0 /f

rem Don’t Display the Getting Started Welcome Screen at Logon
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWelcomeScreen" /t REG_DWORD /d 1 /f

rem Require a Password when a Computer Wakes (On Battery)
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51" /v "DCSettingIndex" /t REG_DWORD /d 1 /f 

rem Require a Password when a Computer Wakes (Plugged)
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Power\PowerSettings\0e796bdb-100d-47d6-a2d5-f7d2daa51f51" /v "ACSettingIndex" /t REG_DWORD /d 1 /f

rem Offer Remote Assistance
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowUnsolicited" /t REG_DWORD /d 0 /f

rem Solicited Remote Assistance
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fAllowToGetHelp" /t REG_DWORD /d 0 /f

rem Turn on session logging
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "LoggingEnabled" /t REG_DWORD /d 1 /f

rem Restrictions for Unauthenticated RPC clients
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Rpc" /v "RestrictRemoteClients" /t REG_DWORD /d 1 /f 

rem RPC Endpoint Mapper Client Authentication
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Rpc" /v "EnableAuthEpResolution" /t REG_DWORD /d 1 /f 

rem Disable ISATAP, Teredo, and 6to4 tunneling protocols
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\TCPIP\v6Transition" /v "ISATAP_State" /t REG_SZ /d "Disabled" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\TCPIP\v6Transition" /v "Teredo_State" /t REG_SZ /d "Disabled" /f
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\TCPIP\v6Transition" /v "6to4_State" /t REG_SZ /d "Disabled" /f


rem automatically pushes changes to the group
Gpupdate /force
pause


cls


