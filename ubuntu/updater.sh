#!/bin/bash

# Prompt
echo "+---------- Updater -----------+"
echo "|   This may take a little     |"
echo "|   bit of time.               |"
echo "+------------------------------+"

# Password is required for this.
# Starts update process.
sudo apt update -y
sudo apt upgrade -y

# Cleanup time 
sudo apt autoclean -y
sudo apt autoremove -y