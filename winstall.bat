
REM Get chocolatey
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install packages.confg -y

%ProgramData%\chocolatey\bin\RefreshEnv.cmd

nvm install latest
nvm use latest
