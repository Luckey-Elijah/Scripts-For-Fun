sudo killall apt-get && sudo killall apt

sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock

sudo dpkg --configure -a
