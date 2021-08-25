# Installing chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# this allows items to be install without the "-y" flag.
choco feature enable -n=allowGlobalConfirmation

refreshenv

# # # # # # # Installs from Chocolately # # # # # # #

# BROWSERS

choco install brave firefox googlechrome vivaldi

# PRODUCTIVITY

# some applications are commented out bc they are already (occasionally) installed or pose issues during installation
choco install zettlr telegram slack mailspring lastpass googledrive dropbox # spotify discord boostnote

# DEVELOPER ITEMS

    # Languages

    # jdk8 and jre8 are commented out bc they take a long time
    choco install golang python python3 rust # jdk8 jre8

    # Editors and IDES

    choco install vscode

    # Tools

    choco install yarn pip git

    # Fonts

    choco install hackfont firacode sourcecodepro

# TOOLS

# CPU-Z and wireshark aren't as common fo use. Can always be installed at a later time.
choco install grep rufus 7zip curl nmap bulk-crap-uninstaller # cpu-z wireshark

# MEDIA ITEMS

# gimp and raper are large and won't be installed by default
choco install youtube-dl vlc # gimp reaper