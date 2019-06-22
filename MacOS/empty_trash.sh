#!/bin/bash

trashPath="~/.Trash"
numItems=`ls -l ~/.Trash | wc -l`

# have leading whitespace to remove
numItems="${numItems#"${numItems%%[![:space:]]*}"}"

# echo $numItems

# checks if can is empty
function canIsEmpty() {
    echo "No need to take out the trash, your bin is already empty."
    exit 0
}

# removes regular files in bin, leaving all directories
function rmOnlyFiles() {
    echo "Removing all regular files in your bin."
    find "$trashPath" -type f -delete
    exit 0
}

# will only remove the directories in the bin
function rmOnlyDir() {
    echo "Removing all directories in your bin."
    rm -rf "$trashPath"
    exit 0
}

# clears EVERYTHING in bin
function emptyAllTrash(){
    echo "Emptying your trash bin."
    rm -rf "$trashPath"
    exit 0
}

# if the bin is empty then returns zero
function isCanEmpty() {
    if [ "$numItems" == 0 ]
    then
        return 0
    fi
    return 1
}

# driver code for emptying the trash
function main() {
    if isCanEmpty 
    then
        canIsEmpty
    else
        if [ "$1" == "file" -o "$1" == "files" -o "$1" == "f" ]
        then
            rmOnlyFiles
        elif [ "$1" == "dir" -o "$1" == "directory" -o "$1" == "d" ]
        then
            rmOnlyDir
        else 
            emptyAllTrash
        fi
    fi
}

main