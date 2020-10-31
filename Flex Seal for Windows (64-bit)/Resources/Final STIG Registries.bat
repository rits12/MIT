@echo off
color 0c
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Final Stig-Based Checklist
echo.

rem The system must be configured to prevent the storage of the LAN Manager hash of passwords.
rem check 

rem Solicited Remote Assistance must not be allowed.
rem check

rem The Debug programs user right must only be assigned to the Administrators group.
rem check 

rem The Windows Installer Always install with elevated privileges must be disabled.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Installer" /v "AlwaysInstallElevated" /t REG_DWORD /d 0 /f 

rem Local volumes must be formatted using NTFS.
echo --/Check to make sure the "File System" indicates "NTFS" for each volume assigned a drive letter
echo --/"ReFS" (resilient file system) is acceptable
echo --/Does not apply to system partitions like the Recovery and EFI System Partition
pause
diskmgmt.msc
pause

rem Autoplay must be turned off for non-volume devices.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v "NoAutoplayfornonVolume" /t REG_DWORD /d 1 /f

rem Anonymous access to Named Pipes and Shares must be restricted.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v "RestrictNullSessAccess" /t REG_DWORD /d 1 /f

rem Autoplay must be disabled for all drives.
rem check

rem The default autorun behavior must be configured to prevent autorun commands.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "NoAutorun" /t REG_DWORD /d 1 /f

rem Internet Information System (IIS) or its subcomponents must not be installed on a workstation.
echo --/GO TO Programs and Features\Turn windows Features on or off
echo --/Make sure "Internet Information Services" and "Internet Information Services Hostable Web Core" are not selected
pause
appwiz.cpl
pause

rem The Act as part of the operating system user right must not be assigned to any groups or accounts.
rem check

rem Administrative accounts must not be used with applications that access the Internet, such as web browsers, or with potential Internet sources, such as email.
rem cant do

rem Only accounts responsible for the administration of a system must have Administrator rights on the system.
rem check

rem The Create a token object user right must not be assigned to any groups or accounts.
rem check

rem The Windows 10 system must use an anti-virus program.
rem Cant do?

rem Anonymous enumeration of SAM accounts must not be allowed.
rem check

rem Reversible password encryption must be disabled.
rem check

rem Structured Exception Handling Overwrite Protection (SEHOP) must be enabled.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d 0 /f

rem Anonymous SID/Name translation must not be allowed.
echo --/GO TO Security Settings\Local Policies\Security Options\Network access: Allow anonymous SID/Name translation
echo --/Setting should be disabled
pause
secpol.msc
pause

rem Data Execution Prevention (DEP) must be configured to at least OptOut.
BCDEDIT /set {current} nx OptOut

rem The LanMan authentication level must be set to send NTLMv2 response only, and to refuse LM and NTLM.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "LmCompatibilityLevel" /t REG_DWORD /d 5 /f

rem The Windows Remote Management (WinRM) service must not use Basic authentication.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Service" /v "AllowBasic" /t REG_DWORD /d 0 /f

rem Windows 10 systems must be maintained at a supported servicing level.
rem check

rem Anonymous enumeration of shares must be restricted.
rem check

rem The Windows Remote Management (WinRM) client must not use Basic authentication.
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WinRM\Client" /v "AllowBasic" /t REG_DWORD /d 0 /f





rem Anonymous enumeration of shares must not be allowed.
rem check

rem AutoPlay must be turned off for non-volume devices.
rem check

rem The default AutoRun behavior must be configured to prevent AutoRun commands.
rem check

rem Directory data (outside the root DSE) of a non-public directory must be configured to prevent anonymous access.
rem cant do? need to be domain controller? also extremely complicated

rem Anonymous enumeration of Security Account Manager (SAM) accounts must not be allowed.
rem check

rem Domain-created Active Directory Organizational Unit (OU) objects must have proper access control permissions.
rem cant do? need to be domain controller? also extremely complicated

rem The Active Directory Domain Controllers Organizational Unit (OU) object must have the proper access control permissions.
rem cant do? need to be domain controller? also extremely complicated

rem Active Directory Group Policy objects must have proper access control permissions.
rem cant do? need to be domain controller? also extremely complicated

rem The Active Directory SYSVOL directory must have the proper access control permissions.
rem cant do? need to be domain controller? also extremely complicated

rem AutoPlay must be disabled for all drives.
rem check

rem Permissions on the Active Directory data files must only allow System and Administrators access.
rem cant do? need to be domain controller? also extremely complicated

rem The Act as part of the operating system user right must not be assigned to any groups or accounts.
rem check

rem Local volumes must use a format that supports NTFS attributes.
rem check

rem The Windows Server 2016 system must use an anti-virus program.
rem cant do?

rem Reversible password encryption must be disabled.
rem check

rem Local accounts with blank passwords must be restricted to prevent access from the network.
rem check

rem The Create a token object user right must not be assigned to any groups or accounts.
rem check

rem Systems must be maintained at a supported servicing level.
rem check

rem Domain Controller PKI certificates must be issued by the DoD PKI or an approved External Certificate Authority (ECA).
rem cant do? need to be domain controller? also extremely complicated

rem PKI certificates associated with user accounts must be issued by the DoD PKI or an approved External Certificate Authority (ECA).
rem cant do? need to be domain controller? also extremely complicated

rem The Debug programs user right must only be assigned to the Administrators group.
check

rem Only administrators responsible for the member server or standalone system must have Administrator rights on the system.
rem check

Administrative accounts must not be used with applications that access the Internet, such as web browsers, or with potential Internet sources, such as email.
rem check

rem The Windows Installer Always install with elevated privileges option must be disabled.
rem check

rem The Windows Remote Management (WinRM) service must not use Basic authentication.
rem check

rem Only administrators responsible for the domain controller must have Administrator rights on the system.
rem check

rem The Windows Remote Management (WinRM) client must not use Basic authentication.
rem check

rem Users with Administrative privileges must have separate accounts for administrative duties and normal operational tasks.
rem check?

rem Anonymous SID/Name translation must not be allowed.
rem check

rem The LAN Manager authentication level must be set to send NTLMv2 response only and to refuse LM and NTLM.
rem check

rem Anonymous access to Named Pipes and Shares must be restricted.
rem check

rem Windows Server 2016 must be configured to prevent the storage of the LAN Manager hash of passwords.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "NoLMHash" /t REG_DWORD /d 1 /f



rem automatically pushes changes to the group
Gpupdate /force
pause



cls

















