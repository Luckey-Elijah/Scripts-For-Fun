# Installing chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco feature enable -n=allowGlobalConfirmation

# Installs from Chocolately

# BROWSERS

choco install googlechrome chromium firefox brave 

# DEVELOPER ITEMS

    # Misc

choco install git vscode sublimetext3 vim wsl-ubuntu-1804

    # Python

choco install python pip pycharm-community

    # Golang

choco install golang goland

    # Java

choco isntall jre11 jdk11 intellijidea-community maven gradle