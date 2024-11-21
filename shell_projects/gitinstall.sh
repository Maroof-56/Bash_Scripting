#!/usr/bin/bash



if [[ ${UID} != 0 ]]
then
    echo "Run with root or using sudo"
    exit 1
fi

if [[ $(uname) == "Linux" ]]
then
    echo "Downloading git for  linux environment.."
    apt install git -y
else
    echo "Download failed not an linux env.."
fi
