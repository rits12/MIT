@echo off

color 0b
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/Security Option Settings
echo.

rem enable Administrator
net user Administrator /active:yes

rem disable built in guest account
net user guest /active:no

rem disable DefaultAccount
net user defaultaccount /active:no

rem disable defaultuser0
net user defaultuser0 /active:no

rem Limit Local Account Use to Blank Passwords to Console Logon Only
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "LimitBlankPasswordUse" /t REG_DWORD /d 1 /f

rem Rename Administrator account
wmic useraccount where name='Administrator' call rename name='philSwift'

rem Rename Guest Account 
wmic useraccount where name='Guest' call rename name='phillipswiffy'

rem Rename DefaultAccount
wmic useraccount where name='DefaultAccount' call rename name='Duck Tape'

rem Rename defaultuser0
wmic useraccount where name='defaultuser0' call rename name='lEaKsEaL'

rem Audit the access of global system objects
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "AuditBaseObjects" /t REG_DWORD /d 0 /f

rem Audit the use of backup and restore privilege
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "FullPrivilegeAuditing" /t REG_BINARY /d 0 /f

rem Force audit policy subcategory settings (Windows Vista or Later) to override audit policy category settings
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "SCENoApplyLegacyAuditPolicy" /t REG_DWORD /d 1 /f

rem Shut down system immediately if unable to log security audits
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "CrashOnAuditFail" /t REG_DWORD /d 1 /f

rem Allowed to format and eject removable media
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AllocateDASD" /t REG_SZ /d 0 /f

rem Prevent users from installing printer drivers
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Print\Providers\LanMan Print Services\Servers" /v "AddPrinterDrivers" /t REG_DWORD /d 1 /f

rem Restrict CD-ROM access to locally logged-on user only
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AllocateCDRoms" /t REG_SZ /d 1 /f

rem Restrict floppy access to locally logged-on user only
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "Allocatefloppies" /t REG_SZ /d 0 /f

rem Digitally encrypt or sign secure channel data (always)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters" /v "RequireSignOrSeal" /t REG_DWORD /d 1 /f

rem Digitally encrypt secure channel data (when possible)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters" /v "SealSecureChannel" /t REG_DWORD /d 1 /f

rem Digitally sign secure channel data (when possible)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters" /v "SignSecureChannel" /t REG_DWORD /d 1 /f

rem Disable machine account password changes
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters" /v "DisablePasswordChange" /t REG_DWORD /d 0 /f

rem Maximum machine account password age
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters" /v "MaximumPasswordAge" /t REG_DWORD /d 30 /f

rem Require strong session key
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Netlogon\Parameters" /v "RequireStrongKey" /t REG_DWORD /d 1 /f

rem Do not display last user name
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DontDisplayLastUserName" /t REG_DWORD /d 1 /f

rem Do not require CTRL+ALT+DEL	
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableCAD" /t REG_DWORD /d 0 /f

rem Message text for users attempting to log on
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "LegalNoticeText" /t REG_SZ /d "I have read & consent to terms in IS user agreement." /f

rem Message title for users attempting to log on
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "LegalNoticeCaption" /t REG_SZ /d "DoD Notice and Consent Banner" /f

rem Number of previous logons to cache (in case domain controller is not available)
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "CachedLogonsCount" /t REG_SZ /d 2 /f

rem Prompt user to change password before expiration
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "PasswordExpiryWarning" /t REG_DWORD /d 14 /f

rem Require Domain Controller authentication to unlock workstation
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "ForceUnlockLogon" /t REG_DWORD /d 0 /f

rem Smart card removal behavior
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "SCRemoveOption" /t REG_SZ /d 1 /f

rem Microsoft network client: Digitally sign communications (always)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "RequireSecuritySignature" /t REG_DWORD /d 1 /f

rem microsoft network client: Digitally sign communications (if server agrees)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "EnableSecuritySignature" /t REG_DWORD /d 1 /f

rem microsoft network client: Send unencrypted password to third-party SMB servers
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v "EnablePlainTextPassword" /t REG_DWORD /d 0 /f

rem microsoft netwrok server: Amount of idle time required before suspending session
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v "autodisconnect" /t REG_DWORD /d 15 /f

rem Microsoft network server: Digitally sign communications (always)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v "RequireSecuritySignature" /t REG_DWORD /d 1 /f

rem Microsoft network server: Digitally sign communications (if client agrees)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v "EnableSecuritySignature" /t REG_DWORD /d 1 /f

rem Microsoft network server: Disconnect clients when logon hours expire
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v "EnableForcedLogoff" /t REG_DWORD /d 1 /f

rem MSS: (AutoAdminLogon) Enable Automatic Logon (Not Recommended)
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AutoAdminLogon" /t REG_SZ /d 0 /f

rem MSS: (DisableIPSourceRouting) IP source routing protection level (protects against packet spoofing)
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableIPSourceRouting" /t REG_DWORD /d 2 /f

rem MSS: (EnableDeadGWDetect) Allow automatic detection of dead network gateways (could lead to DoS)
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableDeadGWDetect" /t REG_DWORD /d 0 /f

rem MSS: (EnableICMPRedirect) Allow ICMP redirects to override OSPF generated routes
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableICMPRedirect" /t REG_DWORD /d 0 /f

rem MSS: (KeepAliveTime)How often keep-alive packets are sent in milliseconds
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "KeepAliveTime" /t REG_DWORD /d 300000 /f

rem MSS: (NoDefaultExempt) Enable NoDefaultExempt for IPSec Filtering (recommended)
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\IPSEC" /v "NoDefaultExempt" /t REG_DWORD /d 1 /f

rem MSS: (NoDriveTypeAutoRun) Disable Autorun for all drives (recommended)
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\policies\Explorer" /v "NoDriveTypeAutorun" /t REG_DWORD /d 255 /f

rem MSS: (NoNameReleaseOnDemand) Allow the computer to ignore NetBIOS name release requests except from WINS servers
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Netbt\Parameters" /v "NoNameReleaseOnDemand" /t REG_DWORD /d 1 /f

rem MSS: (NtfsDisable8dot3NameCreation) Enable the computer to stop generating 8.3 style filenames (recommended)
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\FileSystem" /v "NtfsDisable8dot3NameCreation" /t REG_DWORD /d 0 /f

rem MSS: (PerformRouterDiscovery) Allow IRDP to detect and configure DefaultGateway addresses (could lead to DoS)
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "PerformRouterDiscovery" /t REG_DWORD /d 0 /f

rem MSS: (SafeDllSearchMode) Enable Safe DLL search mode (recommended)
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager" /v "SafeDllSearchMode" /t REG_DWORD /d 1 /f

rem MSS: (ScreenSaverGracePeriod) The time in seconds before the screen saver grace period expires (0 recommended)
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "ScreenSaverGracePeriod" /t REG_SZ /d 0 /f

rem MSS: (SynAttackProtect) Syn attack protection level (protects against DoS)
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d 1 /f

rem MSS: (TCPMaxConnectResponseRetransmissions) SYN-ACK retransmissions when a connection request is not acknowledged
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxConnectResponseRetransmissions" /t REG_DWORD /d 2 /f

rem MSS: (TCPMaxDataRetransmissions) How many times unacknowledged data is retransmitted (3 recommended, 5 is default)
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d 3 /f

rem MSS: (WarningLevel) Percentage threshold for the security event log at which the system will generate a warning
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Eventlog\Security" /v "WarningLevel" /t REG_DWORD /d 90 /f

rem Network access: Allow anonymous SID-Name translation
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "TurnOffAnonymousBlock" /t REG_DWORD /d 0 /f

rem Network access: Do not allow anonymous enumeration of SAM accounts
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "RestrictAnonymousSAM" /t REG_DWORD /d 1 /f

rem Network access: Do not allow anonymous enumeration of SAM accounts and shares
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "RestrictAnonymous" /t REG_DWORD /d 1 /f

rem Network access: Do not allow storage of credentials or .NET Passports for network authentication
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "DisableDomainCreds" /t REG_DWORD /d 1 /f

rem Network access: Let Everyone permissions apply to anonymous users
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "EveryoneIncludesAnonymous" /t REG_DWORD /d 0 /f

rem Network access: Named Pipes that can be accessed anonymously - netlogon, lsarpc, samr, browser
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v "NullSessionPipes" /t "REG_MULTI_SZ" /s "&" /d "netlogon&samer&lsarpc" /f

rem Network access: Remotely accessible registry paths
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedExactPaths" /v "Machine" /t "REG_MULTI_SZ" /s "&" /d "System\CurrentControlSet\Control\ProductOptions&System\CurrentControlSet\Control\Server Applications&Software\Microsoft\Windows NT\CurrentVersion" /f

rem Network access: Remotely accessible registry paths and sub paths
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SecurePipeServers\Winreg\AllowedPaths" /v "Machine" /t "REG_MULTI_SZ" /s "&" /d "Software\Microsoft\OLAP Server&Software\Microsoft\Windows NT\CurrentVersion\Perflib&Software\Microsoft\Windows NT\CurrentVersion\Print&Software\Microsoft\Windows NT\CurrentVersion\Windows&System\CurrentControlSet\Control\ContentIndex&System\CurrentControlSet\Control\Print\Printers&System\CurrentControlSet\Control\Terminal Server&System\CurrentControlSet\Control\Terminal Server\UserConfig&System\CurrentControlSet\Control\Terminal Server\DefaultUserConfiguration&System\CurrentControlSet\Services\Eventlog&System\CurrentControlSet\Services\Sysmonlog" /f

rem Network access: Restrict anonymous access to Named Pipes and Shares
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v "RestrictNullSessAccess" /t REG_DWORD /d 1 /f

rem Network access: Shares that can be accessed anonymously
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\LanManServer\Parameters" /v "NullSessionShares" /t REG_MULTI_SZ /d "" /f

rem Network access: Sharing and security model for local accounts
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "ForceGuest" /t REG_DWORD /d 0 /f

rem Network security: Do not store LAN Manager hash value on next password change
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "NoLMHash" /t REG_DWORD /d 1 /f

rem Network security: Force logoff when logon hours expire
echo GO TO: Local Security Policy\Security Settings\Local Policies\Network security: Force logoff when logon hours expire
echo Enable
pause
secpol.msc
pause

rem Network Security: LAN Manager Authentication Level
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" /v "LmCompatibilityLevel" /t REG_DWORD /d 5 /f

rem Network Security: LDAP client signing requirements
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\LDAP" /v "LDAPClientIntegrity" /t REG_DWORD /d 1 /f

rem Network Security: Minimum session security for NTLM SSP based (including secure RPC) clients
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" /v "NTLMMinClientSec" /t REG_DWORD /d 537395200 /f

rem Network Security: Minimum session security for NTLM SSP based (including secure RPC) servers
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\MSV1_0" /v "NTLMMinServerSec" /t REG_DWORD /d 537395200 /f

rem Recovery Console: Allow Automatic Administrative Logon
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryConsole" /v "SecurityLevel" /t REG_DWORD /d 0 /f

rem Recovery Console: Allow Floppy Copy and Access to All Drives and All Folders
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Setup\RecoveryConsole" /v "SetCommand" /t REG_DWORD /d 0 /f

rem Shutdown: Allow System to be Shut Down Without Having to Log On	
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "ShutdownWithoutLogon" /t REG_DWORD /d 1 /f

rem Shutdown: Clear Virtual Memory Pagefile
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 1 /f

rem System Cryptography: Use FIPS compliant algorithms for encryption, hashing, and signing
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\FIPSAlgorithmPolicy" /v "Enabled" /t REG_DWORD /d 1 /f

rem System objects: Require case insensitivity for non-Windows subsystems
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v "ObCaseInsensitive" /t REG_DWORD /d 1 /f

rem System objects: Strengthen default permissions of internal system objects
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager" /v "ProtectionMode" /t REG_DWORD /d 1 /f


rem automatically pushes changes to the group
Gpupdate /force
pause

cls

























