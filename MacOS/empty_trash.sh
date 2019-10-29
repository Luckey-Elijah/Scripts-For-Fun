#!/bin/bash

trashPath="~/.Trash"
numItems=`ls -l ~/.Trash | wc -l`

# Returns the number of items (files and directories) found in [trashPath]
numItems="${numItems#"${numItems%%[![:space:]]*}"}"

# Prints empty can prompt
function printCanIsEmpty() {
    echo "No need to take out the trash, your bin is already empty."
    exit 0
}

# Removes all regular files in bin, doesn't remove directories
function removeAllFiles() {
    echo "Removing all regular files in your bin."
    find "$trashPath" -type f -delete
    exit 0
}

# Removes all directories in the bin, doesn't remove regular files
function removeAllDirectories() {
    echo "Removing all directories in your bin."
    rm -rf "$trashPath"
    exit 0
}

# Removes EVERYTHING in bin (directories and regular files)
function removeAllItems(){
    echo "Emptying your trash bin."
    rm -rf "$trashPath"
    exit 0
}

# Returns 0 on an empty bin; otherwise, return 1
function isCanEmpty() {
    if [ "$numItems" == 0 ]
    then
        return 0
    fi
    return 1
}

# driver code for emptying the trash
function main() {
    if isCanEmpty # return 0 on empty Trash bin
    then
        printCanIsEmpty
    else
        if [ "$1" == "file" -o "$1" == "files" -o "$1" == "f" ]
        then
            removeAllFiles
        elif [ "$1" == "dir" -o "$1" == "directory" -o "$1" == "d" ]
        then
            removeAllDirectories
        else
            removeAllItems
        fi
    fi
}

main