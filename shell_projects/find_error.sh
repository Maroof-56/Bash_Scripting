#!/usr/bin/bash

errors=" grep -i error /var/log/messages"
echo $errors

if [[ $? -eq 0 ]]
then
    echo "Error found in logs : $errors"
else
    echo "No errors in log "
fi
