@echo off

echo Installing OBS...
powershell -Command "& { (New-Object Net.WebClient).DownloadFile('https://cdn-fastly.obsproject.com/downloads/OBS-Studio-27.0.1-Full-Installer-x64.exe', 'OBS-Installer.exe') }"
start /wait OBS-Installer.exe /verysilent /norestart
del OBS-Installer.exe

echo Installing Steam...
powershell -Command "& { (New-Object Net.WebClient).DownloadFile('https://cdn.akamai.steamstatic.com/client/installer/SteamSetup.exe', 'Steam-Installer.exe') }"
start /wait Steam-Installer.exe /S /D="C:\Program Files (x86)\Steam"
del Steam-Installer.exe

echo Installing Firefox...
powershell -Command "& { (New-Object Net.WebClient).DownloadFile('https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US', 'Firefox-Installer.exe') }"
start /wait Firefox-Installer.exe /S
del Firefox-Installer.exe

echo Installing Discord...
powershell -Command "& { (New-Object Net.WebClient).DownloadFile('https://discordapp.com/api/download?platform=win', 'Discord-Installer.exe') }"
start /wait Discord-Installer.exe /S
del Discord-Installer.exe

echo Installing VS Code...
powershell -Command "& { (New-Object Net.WebClient).DownloadFile('https://az764295.vo.msecnd.net/stable/5e805b79fcb6ba4c2d23712967df89a089da575b/VSCodeUserSetup-x64-1.76.1.exe', 'VSCode-Installer.exe') }"
start /wait VSCode-Installer.exe /verysilent /norestart
del VSCode-Installer.exe

echo Installing Spotify...
powershell -Command "& { (New-Object Net.WebClient).DownloadFile('https://download.scdn.co/SpotifySetup.exe', 'Spotify-Installer.exe') }"
start /wait Spotify-Installer.exe /S
del Spotify-Installer.exe

echo PC is now installed with stuff
pause
