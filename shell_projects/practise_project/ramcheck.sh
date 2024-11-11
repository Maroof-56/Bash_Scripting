#!/usr/bin/bash


SPACE=$( free -mt | grep "Total" | awk '{print $4}' )
TH=6400
TO="maroofahmed002@gmail.com"

if [[ $SPACE -gt $TH ]]
then
    echo " WARNING.. RAM is getting low ! - $SPACE " | mail -s "RAM ALERT !! " $TO
else
    echo " Ram is Good.."
fi

