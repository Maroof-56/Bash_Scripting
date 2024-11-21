#!/usr/bin/bash

path=${1}

echo " Searching... for file in : $path"

read -p "Are you sure you want to delete the files older than 1yr ? (y/n): " confirm

if [[ $confirm != "y" ]]
then
    echo "deletion failed.."
    exit 0
fi

#find $path -mtime +365 -delete

 find $path -type f -mtime +10 > ~/Documents/olderfile.txt

if [[ $? -eq 0 ]]
then
    echo "files successfully deleted"
else
    echo "failed to delete.."
fi
