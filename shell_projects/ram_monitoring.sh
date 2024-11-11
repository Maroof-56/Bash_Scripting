#!/usr/bin/bash

# Approach to consider while making shell scripting projects
 # 1. Always try the command in terminal you want to use before using in shell project

# Ram Monitoring Project - that will  continuously monitor ram space & send alert when it reach to specify space


FREE_SPACE=$( free -mt | grep "Total" | awk '{print $4}' )
TH=4000

if [[ FREE_SPACE -lt $TH ]]
then
    echo "WARNING.., RAM is running low !! $FREE_SPACE "
else
    echo "RAM Space is sufficient - $FREE_SPACE M "
fi
