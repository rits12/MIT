@echo off
color 0c
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Internet Communication settings
echo.

rem Turn Off Automatic Root Certificates Update
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\SystemCertificates\AuthRoot" /v "DisableRootAutoUpdate" /t REG_DWORD /d 1 /f 

rem Turn off downloading of print drivers over HTTP
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Printers" /v "DisableWebPnPDownload" /t REG_DWORD /d 1 /f

rem Turn Off Event Views "Events.asp" Links
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\EventViewer" /v "MicrosoftEventVwrDisableLinks" /t REG_DWORD /d 1 /f 

rem Turn Off Handwriting Recognition Error Reporting
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\HandwritingErrorReports" /v "PreventHandwritingErrorReports" /t REG_DWORD /d 1 /f

rem Turn Off Internet Connection Wizard if URL Connection is Referring to Microsoft.com
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Internet Connection Wizard" /v "ExitOnMSICW" /t REG_DWORD /d 1 /f

rem Turn off Internet download for Web publishing and online ordering wizards
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoWebServices" /t REG_DWORD /d 1 /f

rem Turn Off Internet File Association Service
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoInternetOpenWith" /t REG_DWORD /d 1 /f

rem Turn off printing over HTTP
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Printers" /v "DisableHTTPPrinting" /t REG_DWORD /d 1 /f 

rem Turn Off Registration if URL Connection is Referring to Microsoft.com
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Registration Wizard Control" /v "NoRegistration" /t REG_DWORD /d 1 /f

rem Turn off Search Companion content file updates
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\SearchCompanion" /v "DisableContentFileUpdates" /t REG_DWORD /d 1 /f

rem Turn Off the "Order Prints" Picture Task
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoOnlinePrintsWizard" /t REG_DWORD /d 1 /f

rem Turn off the "Publish to Web" task for files and folders
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoPublishingWizard" /t REG_DWORD /d 1 /f

rem Turn off the Windows Messenger Customer Experience Improvement Program
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Messenger\Client" /v "CEIP" /t REG_DWORD /d 2 /f

rem Turn Off Windows Error Reporting	
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\Windows Error Reporting" /v "Disabled" /t REG_DWORD /d 1 /f

rem Turn Off Windows Movies Maker Automatic Codec Downloads
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsMovieMaker" /v "CodecDownload" /t REG_DWORD /d 1 /f

rem Turn Off Windows Movie Maker Online Web Links
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsMovieMaker" /v "Webhelp" /t REG_DWORD /d 1 /f

rem Turn Off Windows Movie Maker Saving to Online Video Hosting Provider
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\WindowsMovieMaker" /v "WebPublish" /t REG_DWORD /d 1 /f

rem Turn off Windows Update device driver searching
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\DriverSearching" /v "DontSearchWindowsUpdate" /t REG_DWORD /d 1 /f


rem automatically pushes changes to the group
Gpupdate /force
pause



cls























