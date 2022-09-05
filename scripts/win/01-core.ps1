##
# Setup: WSL 2
# If this doesn't work Windows is too old.
# We can make it work, but it'll never really work:
# https://docs.microsoft.com/en-us/windows/wsl/install-manual
wsl --install

##
# Install: Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

##
# Install: Docker Desktop
choco install -y docker-desktop

##
# TODO: User needs to log out for Docker Desktop

##
# Run: Docker Desktop
Start-Process -FilePath "$($Env:ProgramFiles)\Docker\Docker\Docker Desktop.exe"

##
# TODO: Wait for Docker Desktop to be running.
