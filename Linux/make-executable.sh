#!/bin/bash

# constants
extension='.sh'
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'
binpath='/usr/bin'

# excludes
ex1=updater.sh
ex2=package-install.sh
ex3=make-executable.sh

function pause(){
    read -p "$*"
}

echo -e "This will make changes to your ${GREEN}$binpath${NC} path"
pause

for file in *"$extension"; do

    if [ "$file" == "$ex1" ] || [ "$file" == "$ex2" ] || [ "$file" == "$ex3" ]
    then
        echo -e "Not intalling ${RED}$file${NC}."
    else
        # prints what script is being installed
        echo -e "Installing ${GREEN}`basename "$file" "$extension"`${NC} to $binpath."

        # mods the policy and moves file
        chmod +x "$file"
        cp $file $binpath/`basename "$file" "$extension"`
        chmod -x "$file"
    fi
done