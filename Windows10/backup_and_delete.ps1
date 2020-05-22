# A PowerShell script that copies/backs-up files then deletes them.
# This script doesn't overwrite already existing file in desitnation path.
# Writes logs to C:\Scripts\backup_log.log

# GLOBAL VARIABLES
$LOGPATH = "C:\Scripts\"
$LOGFILE = "C:\Scripts\delete_files_log.log"
$SOURCEPATH = "C:\Users\lucke\dev\scripts_for_fun\"
$DESTINATIONPATH = "D:\Test Area"
$FILEAGE = "14" # Default is 14 days
$DATE = Get-Date

function New-ScriptPath {
    If (!(Test-Path $LOGPATH)) {
        New-Item -ItemType Directory -Force -Path $LOGPATH
    }
}

# Function that copies files from the source path into the destination path
function Copy-Files {
    Copy-Item (Join-Path $SOURCEPATH "*") $DESTINATIONPATH -Exclude (Get-ChildItem $DESTINATIONPATH)
}

# Function that removes the items in the source path that are older than the file age variable
function Remove-SourceFiles {
    # Get-ChildItem -Path "$SOURCEPATH" -Recurse | Where-Object CreationTime -lt  ($DATE).AddDays(-$FILEAGE) | Remove-Item -Force -Recurse *>&1 >> $LOGFILE
    Get-ChildItem $SOURCEPATH | Where-Object { $_.LastWriteTime -lt $DATE.AddDays(-$FILEAGE) } | Remove-Item -Force -Recurse *>&1 >> $LOGFILE
}

# Function that writes the script "copy" status to the log file
function Write-StatusCopy {
    Write-Output "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -" >> $LOGFILE
    Write-Output "Path of source:               " $SOURCEPATH >> $LOGFILE
    Write-Output "Path of destination:          " $DESTINATIONPATH >> $LOGFILE
    Write-Output "Started backup on:            " $DATE >> $LOGFILE
}

# Function that wrte the script "remove" status to the log file
function Write-StatusRemove {
    Write-Output "Path of source to be removed: " $SOURCEPATH >> $LOGFILE
    Write-Output "Started removing on:          " $DATE >> $LOGFILE
}

# Function that writes the script "ending" status to the log file
function Close-Log {
    Write-Output "Finished removing on:         " $DATE >> $LOGFILE
    Write-Output ""
}

# Calling the functions to execute the script
New-ScriptPath

Write-StatusCopy
Copy-Files

Write-StatusRemove
Remove-SourceFiles

Close-Log