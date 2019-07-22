# Installing chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco feature enable -n=allowGlobalConfirmation

refreshenv

 # # # # # # # Installs from Chocolately # # # # # # #

# BROWSERS

choco install brave Firefox googlechrome vivaldi

# PRODUCTIVITY

choco install boostnote zettlr telegram spotify slack mailspring lastpass googledrive f.lux dropbox discord chocolatey-windowsupdate.extension

# DEVELOPER ITEMS

    # Languages

    choco install golang jdk8 jre8 python python3 rust

    # Editors and IDES

    choco install vscode

    # Tools

    choco install yarn pip git

    # Fonts

    choco install hackfont firacode sourcecodepro

# TOOLS

choco install grep rufus 7zip curl cpu-z wireshark nmap bulk-crap-uninstaller

# MEDIA ITEMS

choco install youtube-dl vlc reaper gimp