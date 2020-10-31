@echo off 
color 0c
type C:\Users\"%USERNAME%"\Desktop\"Flex Seal for Windows (64-bit)"\Resources\logo.txt
echo.
echo -/User Rights Assignment
echo.

echo --/Right To Access This Computer From The Network
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Access This Computer From The Network
echo ----/Setting should only include "Administrators," "Authenticated Users," and "Enterprise Domain Controllers"
pause
secpol.msc
pause
echo.


echo --/Right To Act As Part Of The Operating System
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Act as part of the operating system
echo ----/Setting should exist, but be blank* (no entries)
pause
secpol.msc
pause
echo.


echo --/Right To Adjust Memory Quotas For A Process
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Adjust memory quotas for a process
echo ----/Setting should only include "Administrators, LOCAL SERVICE, NETWORK SERVICE"
pause
secpol.msc
pause
echo.


echo --/Right To Log On Locally
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Allow log on locally
echo ----/Setting should only include "Administrators," and "Users"
pause
secpol.msc
pause
echo.


echo --/Right To Log On Through Remote Desktop Services
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Allow log on through Remote Desktop Services
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Right To Back Up Files and Directories
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Back up files and directories
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Right To Bypass Traverse Checking
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Bypass traverse checking
echo ----/Setting should only include "Administrators," "Authenticated Users," "Local Service," "Network Service," "Window Manager\Window Manager Group"
pause
secpol.msc
pause
echo.


echo --/Right To Change the System Time
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Change the system time
echo ----/Setting should only include "Administrators," and "LOCAL SERVICE"
pause
secpol.msc
pause
echo.


echo --/Right to Change the time zone
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Change the time zone
echo ----/Setting should only include "Administrators," and "Local Service"
pause
secpol.msc
pause
echo.


echo --/Right To Create A Pagefile
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Create a pagefile
echo ----/Settings should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Right To Create A Token Object
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Create a token object
echo ----/Setting should exist, but be blank* (no entries)
pause
secpol.msc
pause
echo.


echo --/Right To Create Global Objects
echo. 
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Create global objects
echo ----/Setting should only include "Administrators," "LOCAL SERVICE," "NETWORK SERVICE," and "SERVICE"
pause
secpol.msc
pause
echo.


echo --/Right To Create Permanent Shared Objects
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Create permanent shared objects
echo ----/Setting should exist, but be blank* (no entries)
pause
secpol.msc
pause
echo.



echo --/Right To Debug Programs
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Debug programs
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Denied Access To This Computer From The Network
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Deny access to this computer from the network
echo ----/For Domain Systems Only, setting should include "Enterprise Admins group," "Domain Admins group," and "Local account"
echo ----/For All Systems, setting should include "Guests Group"
pause
secpol.msc
pause
echo.


echo --/Denied Logon As A Batch Job
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Deny logon as a batch job
echo ----/For Domain Systems Only, setting should include "Enterprise Admins Group," and "Domain Admins Group"
echo ----/For All Systems, setting should include "Guests Group," and "Support_388945a0"
pause
secpol.msc
pause
echo.


echo --/Denied Logon As A Service
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Deny logon as a service
echo ----/For Domain Joined Systems Only, setting should include "Enterprise Admins Group," and "Domain Admins Group"
echo ----/For Non-Domain Systems, setting should exist, but be blank* (no entries)
pause
secpol.msc
pause
echo.


echo --/Denied Logon Locally
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Deny log on locally
echo ----/For Domain Systems Only (Workstations dedicated to the management of Active Directory are exempt from this), setting should include "Enterprise Admins Group," and "Domain Admins Group"
echo ----/For All Systems, setting should include "Guests Group"
pause
secpol.msc
pause
echo.


echo --/Denied Logon Through Terminal Services
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Deny logon through Terminal Services
echo ----/If Terminal Services is not used by the organization, setting should include "Everyone"
echo.
echo ----/If TS is used in Domain Systems Only, setting should include "Enterprise Admins Group," "Domain Admins Group," and "*All Local Administrator Accounts"
echo ----/*Note: Do not include the built-in Administrators group. This group must contain the appropriate accounts/groups responsible for administering the system.
echo. 
echo ----/If TS is used in All Systems, setting should include "Guests Group"
pause
secpol.msc
pause
echo.



echo --/Right To Force Shutdown From A Remote System
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Force shutdown from a remote system
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Right To Generate Security Audits
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Generate security audits
echo ----/Setting should only include "LOCAL SERVICE," and "NETWORK SERVICE"
pause
secpol.msc
pause
echo.


echo --/Impersonate a Client After Authentication
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Impersonate a client after authentication
echo ----/Setting should only include "Administrators," "LOCAL SERVICE," "NETWORK SERVICE," and "SERVICE"
pause
secpol.msc
pause
echo.


echo --/Increase a Process Working Set
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Increase a process working set
echo ----/Setting should only include "Administrators," and "Local Service"
pause
secpol.msc
pause
echo.


echo --/Right To Increase Scheduling Priority
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Increase scheduling priority
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Right To Load And Unload Device Drivers
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Load and unload device drivers
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Right To Lock Pages In Memory
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Lock pages in memory
echo ----/Setting should exist, but be blank* (no entries)
pause
secpol.msc
pause
echo.


echo --/Right To Log On As A Batch Job
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Log on as a batch job
echo ----/Setting should only include "Administrators," but having "Backup Operators," and "Performance Log Users" as well is acceptable
pause
secpol.msc
pause
echo.


echo --/Right To Log On As A Service
echo. 
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Log on as a service
echo ----/Setting should exist, but be blank* (no entries)
pause
secpol.msc
pause
echo.


echo --/Right To Manage Auditing And Security Log
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Manage auditing and security log
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Modify an object label
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Modify an Object Label
echo ----/Setting should exist, but be blank* (no entries)
pause
secpol.msc
pause
echo.


echo --/Right To Modify Firmware Environment Values
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Modify firmware environment values
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo. 


echo --/Right To Perform Volume Maintenance Tasks
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Perform volume maintenance tasks
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Right To Profile Single Process
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Profile single process
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Right To Profile System Performance
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Profile system performance
echo ----/Setting should only include "Administrators" and "NT Service\WdiServiceHost"
pause
secpol.msc
pause
echo.


echo --/Right To Remove Computer From Docking Station
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Remove computer from docking station
echo ----/Setting should only include "Administrators," and "Users"
pause
secpol.msc
pause
echo.


echo --/Right To Replace A Process Level Token
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Replace a process level token
echo ----/Setting should only include "LOCAL SERVICE," and "NETWORK SERVICE"
pause
secpol.msc
pause
echo.


echo --/Right To Restore Files And Directories
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Restore files and directories
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


echo --/Right To Shut Down The System
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Shut down the system
echo ----/Setting should only include "Administrators," but "Backup Operators" as well is acceptable
pause
secpol.msc
pause
echo.


echo --/Right To Synchronize Directory Service Data
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Synchronize directory service data
echo ----/Setting should exist, but be blank* (no entries)
pause
secpol.msc
pause
echo.


echo --/Right To Take Ownership Of Files Or Other Objects
echo.
echo ----/GO TO Security Settings\Local Policies\User Rights Assignment\Take ownership of files or other objects
echo ----/Setting should only include "Administrators"
pause
secpol.msc
pause
echo.


rem automatically pushes changes to the group
Gpupdate /force
pause

cls