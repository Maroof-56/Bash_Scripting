#!/usr/bin/bash

for folder in $(find . -type d);
do
   echo "The folder is $folder"
   if [[ -d "folder_test" ]]
   then
       echo "folder exists !!"
       read -p "Do you want to delete  $folder ?  (y/n) : " confirm
       if [[ $confirm == "y" ]]
       then
           echo "Removing $folder_test..."
           rm -rf "folder_test".
           echo "folder deleted."
           exit 1
       else
           echo "deletion failed."
       fi
   else
       echo "folder not exist"
fi
done
