#!/bin/bash

# First for good measure
sudo apt update 

# Prompt
echo "+--------- Package Installer ---------+"
echo "| This may take a little bit of time. |"
echo "| You may be prompted to enter your   |"
echo "| password for installation.          |"
echo "+-------------------------------------+"

# Installs from package list
sudo apt install $(cat packages.txt)

# Installs from other sources

# Draw.io

wget https://github.com/jgraph/drawio-desktop/releases/download/v9.3.1/draw.io-amd64-9.3.1.deb 
sudo dpkg -i draw.io-amd64-9.3.1.deb
rm draw.io-amd64-9.3.1.deb

# Minecraft Launcher



# VS-Code

sudo snap install vscode --classic

# Sendanywhere

wget https://update.send-anywhere.com/linux_downloads/sendanywhere_latest_amd64.deb
sudo dpkg -i sendanywhere_latest_amd64.deb
rm sendanywhere_latest_amd64.deb

# Teamviewer

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
rm teamviewer_amd64.deb

sudo apt autoremove
sudo apt autoclean