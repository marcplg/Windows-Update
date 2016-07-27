@Echo off

:MENU
Echo How would you like Windows Update to work?
Echo.
Echo 1 - Never check for updates.
Echo 2 - Notify to download and install.
Echo 3 - Auto download and notify for install.
Echo 4 - Auto download and auto install.
Echo.
SET /P M=Type 1, 2, 3, or 4 then press enter:
IF %M%==1 GOTO Neverever
IF %M%==2 GOTO Notify
IF %M%==3 GOTO AutoDownloadOnly
IF %M%==4 GOTO AutoDownloadAndInstall

:Neverever
cls
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 1 /f
Echo Windows Update will never ever ever check for updates again.
Echo.
Echo Press any key to exit.
Pause >nul
exit

:Notify
cls
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 2 /f
Echo Windows Update will notify to download and install.
Echo.
Echo Press any key to exit.
Pause >nul
exit

:AutoDownloadOnly
cls
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 3 /f
Echo Windows Update will download and notify for install.
Echo.
Echo Press any key to exit.
Pause >nul
exit

:AutoDownloadAndInstall
cls
reg add "HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU" /v AUOptions /t REG_DWORD /d 4 /f
Echo Windows Update will download and auto install.
Echo.
Echo Press any key to exit.
Pause >nul
exit