# title of script
TITLE="Ubuntu Fresh-Install Post Script"

# print details
echo "Script created by Eljiah Luckey for fresh installs of Ubuntu 18.04"
echo "Root privileages are required and a 64-bit system."
echo "This script will install severall applications and make some changes to the system. Restart is required after the script is run. Let's get this started. Make sure you have a high-speed internet connection.\n\n"

# prep system with updates
sudo apt update
sudo apt upgrade

# bulk of application installs
echo "\nSearching for \"packages.txt\" file in current directory...\n"

# must use apt-get for this install package
xargs -a packages.txt sudo apt install
sudo apt-get install fonts-powerline

# once finished with installs, run auto clean
sudo apt autoremove -y
sudo apt autoclean -y

# setup zsh + spaceship theme
echo "\nSetting up Zsh and setting theme to spaceship.\n"
chsh -s $(which zsh)

# setting the given temp.zshrc to ./.zshrc
mv temp.zshrc ~/.zshrc

# setup of Dropbox
# cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# ~/.dropbox-dist/dropboxd