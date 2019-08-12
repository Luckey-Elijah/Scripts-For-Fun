# A PowerShell script that copies/backs-up files then deletes them. 
# This script doesn't overwrite already existing file in desitnation path.
# Writes logs to C:\Scripts\backup_log.log

# GLOBAL VARIABLES
$LOGFILE = "C:\Scripts\delete_files_log.log"
$SOURCEPATH = ""
$DESTINATIONPATH = ""
$FILEAGE = "14"

# Function that copies files from $SOURCE
function Copy-Files {
    Copy-Item (Join-Path $SOURCEPATH "*") $DESTINATIONPATH -Exclude (Get-ChildItem $DESTINATIONPATH)
}

function Remove-SourceFiles {
    Get-ChildItem -Path "$SOURCEPATH" -Recurse | Where-Object CreationTime -lt  (Get-Date).AddDays(-$FILEAGE) | Remove-Item -Force -Recurse *>&1 >> $LOGFILE
}
function Write-StatusCopy {
    Write-Output "----------------------------------------" >> $LOGFILE
    Write-Output "Path of source:               " $SOURCEPATH >> $LOGFILE
    Write-Output "Path of destination:          " $DESTINATIONPATH >> $LOGFILE
    Write-Output "Started backup on:            " Get-Date >> $LOGFILE

}

function Write-StatusRemove {
    Write-Output "Path of source to be removed: " $SOURCEPATH
    Write-Output "Started removing on:          " Get-Date >> $LOGFILE
}


function Close-Log {
    Write-Output "Finished removing on:         " Get-Date >> $LOGFILE
    Write-Output
}

Write-StatusCopy
Copy-Files

Write-StatusRemove
Remove-SourceFiles

Close-Log