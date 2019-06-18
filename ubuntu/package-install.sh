#!/bin/bash

# listens for user input
function pause(){
    read -p "$*"
}

# Prompt
echo "+--------- Package Installer ---------+"
echo "| This may take a little bit of time. |"
echo "| You may be prompted to enter your   |"
echo "| password for installation.          |"
echo "|                                     |"
echo "| Make sure you are in the same       |"
echo "| as the packages.txt file.           |"
echo "|                                     |"
echo "| Press [ENTER] to continue.          |"
echo "+-------------------------------------+"

pause

# First for good measure
sudo apt update 

# Installs from package list
sudo apt install $(cat ./# First for good measure
sudo apt update 
packages.txt)

# Installs from other sources

# Draw.io


# wget https://github.com/jgraph/drawio-desktop/releases/download/v9.3.1/draw.io-amd64-9.3.1.deb 
# sudo dpkg -i draw.io-amd64-9.3.1.deb
# rm draw.io-amd64-9.3.1.deb

# Brave Browser
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
source /etc/os-release
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list
sudo apt update
sudo apt install brave-keyring brave-browser

# VS-Code
sudo snap install vscode --classic

# Sendanywhere
wget https://update.send-anywhere.com/linux_downloads/sendanywhere_latest_amd64.deb
sudo dpkg -i sendanywhere_latest_amd64.deb
rm sendanywhere_latest_amd64.deb

# Teamviewer
# wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
# sudo dpkg -i teamviewer_amd64.deb
# rm teamviewer_amd64.deb

# Set up for ZSH and Oh-my-zsh
sudo chsh -s /usr/bin/zsh root
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc

# Install Spaceship theme
npm install -g spaceship-prompt

sudo apt autoremove
sudo apt autoclean
