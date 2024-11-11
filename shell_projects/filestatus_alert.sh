#!/usr/bin/bash

# Monitoring the free filesystem fs space disk

# Understand these pipes process 
  # df - gives you detail related to space disk
  # egrep - removes the detail we not want while seeing in terminal
  # grep sda2 - filter the want info
  # awk  - process the 5th column & gives output
  # tr -d % - remove % from output.

FU=$( df -H | egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}' | tr -d % )
TO="maroofahmed002@gmail.com"

if [[ FU -ge 50 ]]
then
    echo " WARNING..,space is getting low -$FU " | mail -s "DISK SPACE ALERT" $TO
else
    echo " Good,Space is sufficient."
fi
