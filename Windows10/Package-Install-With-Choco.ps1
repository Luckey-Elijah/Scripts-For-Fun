# Installing chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# this allows items to be install without the "-y" flag.
choco feature enable -n=allowGlobalConfirmation

refreshenv

# # # # # # # Installs from Chocolately # # # # # # #

# BROWSERS

choco install firefox # brave googlechrome vivaldi

# PRODUCTIVITY

# some applications are commented out bc they are already (occasionally) installed or pose issues during installation
choco install telegram spotify discord # slack mailspring lastpass googledrive dropbox boostnote zettlr

# DEVELOPER ITEMS

# Languages

# choco install golang python python3 rust jdk8 jre8

# Editors and IDES

choco install vscode

# Tools

choco install git # yarn pip

# Fonts

choco install firacode # sourcecodepro hackfont

# TOOLS

# CPU-Z and wireshark aren't as common fo use. Can always be installed at a later time.
choco install grep 7zip curl # cpu-z wireshark rufus nmap bulk-crap-uninstaller

# MEDIA ITEMS

# gimp and raper are large and won't be installed by default
choco install vlc # youtube-dl gimp reaper