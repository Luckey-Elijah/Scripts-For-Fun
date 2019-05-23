#!/bin/bash

# Prompt
echo "+--------- Package Installer ---------+"
echo "| This may take a little bit of time. |"
echo "| You may be prompted to enter your   |"
echo "| password for installation.          |"
echo "+-------------------------------------+"

sudo apt install $(cat packages.txt)