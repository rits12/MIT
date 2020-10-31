@echo off
color 0a
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Autoplay Policies & Credential User Interface & Digial Locker & Event Log Service Settings & Game Explorer & Internet Information Services & NetMeeting & Online Assistance & Search... 
echo.

rem Turn off Autoplay
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer" /v "NoDriveTypeAutoRun" /t REG_DWORD /d 255 /f

rem Enumerate administrator accounts on elevation
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\CredUI" /v "EnumerateAdministrators" /t REG_DWORD /d 0 /f

rem Do not allow Digital Locker to run
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Digital Locker" /v "DoNotRunDigitalLocker" /t REG_DWORD /d 1 /f

rem Maximum Application Log Size
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application" /v "MaxSize" /t REG_DWORD /d 32768 /f

rem Maximum Security Log Size
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Security" /v "MaxSize" /t REG_DWORD /d 1024000 /f 

rem Maximum Setup Log Size
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\Setup" /v "MaxSize" /t REG_DWORD /d 32768 /f

rem Maximum System Log Size
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\EventLog\System" /v "MaxSize" /t REG_DWORD /d 32768 /f

rem Turn Off Downloading of Game Information
reg add "HKEY_LOCAL_MACHINE\\Software\Policies\Microsoft\Windows\GameUX" /v "DownloadGameInfo" /t REG_DWORD /d 0 /f

rem Prevent IIS Installation

rem Disable remote Desktop Sharing	
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Conferencing" /v "NoRDS" /t REG_DWORD /d 1 /f

rem Turn off Untrusted Content
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Assistance\Client\1.0" /v "NoUntrustedContent" /t REG_DWORD /d 1 /f

rem Allow indexing of encrypted files
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Search" /v "AllowIndexingEncryptedStoresOrItems" /t REG_DWORD /d 0 /f

rem Prevent indexing uncached Exchange folders
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Search" /v "PreventIndexingUncachedExchangeFolders" /t REG_DWORD /d 1 /f

rem Do not allow passwords to be saved	
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "DisablePasswordSaving" /t REG_DWORD /d 1 /f

rem Do not allow drive redirection
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services" /v "fDisableCdm" /t REG_DWORD /d 1 /f

rem Always prompt client for password upon connection
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "fPromptForPassword" /t REG_DWORD /d 1 /f

rem Set client connection encryption level
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "MinEncryptionLevel" /t REG_DWORD /d 3 /f

rem Set a time limit for disconnected sessions
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "MaxDisconnectionTime" /t REG_DWORD /d 60000 /f

rem Set a time limit for active but idle Terminal Services sessions
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services" /v "MaxIdleTime" /t REG_DWORD /d 900000 /f

rem Configure Microsoft SpyNet Reporting
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Defender\Spynet" /v "SpyNetReporting" /t REG_DWORD /d 0 /f

rem Disable Logging
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "LoggingDisabled" /t REG_DWORD /d 0 /f

rem Disable Windows Error Reporting
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f

rem Display Error Notification
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\PCHealth\ErrorReporting" /v "ShowUI" /t REG_DWORD /d 0 /f

rem Do Not Send Additional Data
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "DontSendAdditionalData" /t REG_DWORD /d 1 /f

rem Turn off Heap termination on corruption
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Explorer" /v "NoHeapTerminationOnCorruption" /t REG_DWORD /d 0 /f

rem Turn off shell protocol protected mode
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Explorer" /v "PreXPSP2ShellProtocolBehavior" /t REG_DWORD /d 0 /f

rem Disable IE security prompt for Windows Installer scripts
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Installer" /v "SafeForScripting" /t REG_DWORD /d 0 /f

rem Enable user control over installs
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Installer" /v "EnableUserControl" /t REG_DWORD /d 0 /f

rem Prohibit non-administrators from applying vendor signed updates
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Installer" /v "DisableLUAPatching" /t REG_DWORD /d 1 /f

rem Report Logon Server Not Available During User logon
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ReportControllerMissing" /t REG_DWORD /d 1 /f

rem Turn off the communities features
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Mail" /v "DisableCommunities" /t REG_DWORD /d 1 /f

rem Turn off Windows Mail application
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows Mail" /v "ManualLaunchAllowed" /t REG_DWORD /d 0 /f

rem Prevent Windows Media DRM Internet Access
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WMDRM" /v "DisableOnline" /t REG_DWORD /d 1 /f

rem Do Not Show First Use Dialog Boxes
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsMediaPlayer" /v "GroupPrivacyAcceptance" /t REG_DWORD /d 1 /f

rem Prevent Automatic Updates
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsMediaPlayer" /v "DisableAutoupdate" /t REG_DWORD /d 1 /f

rem Turn off Windows Meeting Space
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Collaboration" /v "TurnOffWindowsCollaboration" /t REG_DWORD /d 1 /f

rem Do not allow Windows Messenger to be run
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Messenger\Client" /v "PreventRun" /t REG_DWORD /d 1 /f

rem Do not automatically start Windows Messenger initially
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Messenger\Client" /v "PreventAutoRun" /t REG_DWORD /d 1 /f

rem Disable unpacking and installation of gadgets that are not digitally signed
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Windows\Sidebar" /v "TurnOffUnsignedGadgets" /t REG_DWORD /d 1 /f

rem Override the More Gadgets Lnk
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Windows\Sidebar" /v "OverrideMoreGadgetsLink" /t REG_SZ /d "about:blank" /f

rem Turn Off User Installed Windows Sidebar Gadgets
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Windows\Sidebar" /v "TurnOffUserInstalledGadgets" /t REG_DWORD /d 1 /f

rem Password protect the screen saver
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v "ScreenSaverIsSecure" /t REG_SZ /d 1 /f

rem Screen Saver Active
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v "ScreenSaveActive" /t REG_SZ /d 1 /f

rem Screen Save Time Out
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop" /v "ScreenSaveTimeOut" /t REG_SZ /d 900 /f

rem Prompt for password on resume from hibernate / suspend
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System\Power" /v "PromptPasswordOnResume" /t REG_DWORD /d 1 /f

rem Do not preserve zone information in file attachments
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "SaveZoneInformation" /t REG_DWORD /d 2 /f

rem Hide mechanisms to remove zone information
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "HideZoneInfoOnProperties" /t REG_DWORD /d 1 /f

rem Notify antivirus programs when opening attachments
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments" /v "ScanWithAntiVirus" /t REG_DWORD /d 3 /f

rem Prevent users from sharing files within their profile
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInPlaceSharing" /t REG_DWORD /d 1 /f

rem Turn off Help Ratings
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Assistance\Client\1.0" /v "NoExplicitFeedback" /t REG_DWORD /d 1 /f 

rem Turn off Help Experience Improvement Program
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Assistance\Client\1.0" /v "NoImplicitFeedback" /t REG_DWORD /d 1 /f 


rem automatically pushes changes to the group
Gpupdate /force

pause

cls
















