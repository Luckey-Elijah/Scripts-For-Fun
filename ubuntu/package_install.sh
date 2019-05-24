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

# VS Code
