#!/bin/bash
# script: upgrade will run normal routine upgrade and clean-ups

function pause(){
    read -p "$*"
}

echo
echo "+-----------------------------------+"
echo "| Press [Enter] to continue routine |"
echo "| system updates.                   |"
echo "+-----------------------------------+"

pause

echo
echo "+-----------------------------------+"
echo "| Running sudo apt update           |"
echo "+-----------------------------------+"

sleep 0.5
sudo apt update -y

echo
echo "+-----------------------------------+"
echo "| Running sudo apt upgrade          |"
echo "+-----------------------------------+"

sleep 0.5
sudo apt upgrade -y

echo
echo "+-----------------------------------+"
echo "| Running sudo apt autoclean        |"
echo "| Running sudo apt autoremove       |"
echo "+-----------------------------------+"

sleep 0.5
sudo apt autoclean -y
sudo apt autoremove -y

echo
echo "+-----------------------------------+"
echo "| Installs are complete.            |"
echo "+-----------------------------------+"
echo