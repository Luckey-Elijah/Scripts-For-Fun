#!/bin/bash

# constants
extension='.sh'

# excludes
ex0='updater.sh'
ex1='package-install.sh'

for file in *"$extension"; do

    if [ "$file" == "$ex0" ] || [ "$file" == "$ex1" ]
    then
        echo "Not intalling tool $file."
    else
        echo "chmod +x $file"
        chmod +x "$file"
        basename "$file" "$extension"
    fi
done

