#!/usr/bin/bash

Red=$'\e[1;31m'
Green=$'\e[1;32m'
Yellow=$'\e[1;33m'
Blink=$'\e[5m'
Reset=$'\e[0m'

echo "$Yellow Check the status of any installed software service.$Reset"

read -p "Enter service/software name to check the status : " service_name

if [[ -z $service_name ]]
then
    echo "$Red failed enter proper name !!$Reset"
else
    echo "$Blink$Yellow Checking status...$Reset"
    systemctl status $service_name
fi

