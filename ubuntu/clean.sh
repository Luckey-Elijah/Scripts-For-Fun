#!/bin/bash
# Script that cleans up system files

function pause(){
    read -p "$*"
}

echo
echo "+-----------------------------------+"
echo "| Press [Enter] to continue routine |"
echo "| system cleaning.                  |"
echo "+-----------------------------------+"

pause

sudo apt autoclean
sudo apt autoremove

echo
echo "+-----------------------------------+"
echo "| Complete.                         |"
echo "+-----------------------------------+"
