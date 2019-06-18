#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

function pause(){
    read -p "$*"
}

function printPrompt(){
    echo "+---------------------------------------------+"
    echo "| This will run the following commands:       |"
    echo "+---------------------------------------------+"
    echo -e "|    sudo ${RED}killall${NC} ${GREEN}apt-get${NC} && sudo ${RED}killall${NC} ${GREEN}apt${NC} |"
    echo -e "|    sudo ${RED}rm${NC} /var/lib/apt/lists/lock          |"
    echo -e "|    sudo ${RED}rm${NC} /var/cache/apt/archives/lock     |"
    echo -e "|    sudo ${RED}rm${NC} /var/lib/dpkg/lock               |"
    echo -e "|    sudo ${RED}dpkg${NC} ${GREEN}--configure${NC} -a                 |"
    echo "+---------------------------------------------+"
    echo "| The goal is recover the previous state of   |"
    echo "| your system before there was a issue with   |"
    echo "| \"locked\" files during apt-get or apt.       |"
    echo "+---------------------------------------------+"
    echo -e "| Press ${RED}[ENTER]${NC} to continue.                  |"
    echo "+---------------------------------------------+"

    pause
}

function callFunctions(){
    sudo killall apt-get && sudo killall apt

    sudo rm /var/lib/apt/lists/lock /var/cache/apt/archives/lock /var/lib/dpkg/lock

    sudo dpkg --configure -a
}

printPrompt


