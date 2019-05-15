
REM Get chocolatey
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

REM Install da packages
choco install packages.confg -y

REM Get the latest node
REM Note that `nvm install latest` works but `nvm use latest` does not. Hence
REM the major version number.
cmd /c nvm install 12; nvm use 12
