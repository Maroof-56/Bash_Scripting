#!/usr/bin/bash

DIR=$( df -H | egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}' | tr -d %  )
TO="maroofahmed002@gmail.com"


if [[ $DIR -ge 65 ]]
then
    echo "WARNING.. DISK is going low ! - $DIR " | mail -s "DISK SPACE ALERT." $TO
else
    echo "DISK IS GOOD>"
fi

