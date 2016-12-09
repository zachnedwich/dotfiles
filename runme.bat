REM RUN ME AS ADMIN
ECHO OFF
START /WAIT  @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"


choco install googlechrome -Y
choco install jre8 -Y
choco install firefox -Y
choco install adobereader -Y
choco install 7zip.install -Y
choco install notepadplusplus.install -Y
choco install nodejs.install -Y
choco install git.install -Y
choco install vlc -Y
choco install jdk8 -Y
choco install filezilla -Y
choco install putty -Y
choco install rufus -Y
choco install sqlitebrowser -Y
choco install androidstudio -Y
choco install sublimetext3