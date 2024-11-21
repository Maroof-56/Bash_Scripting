#!/usr/bin//bash


Green=$'\e[1;32m'
Red=$'\e[1;30m'
Blink=$'\e[5m'
Reset=$'\e[0m'
BATH=/home/maroof-56/

if [[ -e $BATH/prometheus-3.0.0-rc.1.linux-amd64.tar.gz ]]
then
    echo " File  exist it need to unzip."
    echo " $Green Unzipping...$Reset"
    tar -zxvf $BATH/prometheus-3.0.0-rc.1.linux-amd64.tar.gz
else
    echo "File not  exist !! it need to download"
    echo " $Blink$Green Downloading file...$Reset"
    wget https://github.com/prometheus/prometheus/releases/download/v3.0.0-rc.1/prometheus-3.0.0-rc.1.linux-amd64.tar.gz
    tar -zxvf prometheus-3.0.0-rc.1.linux-amd64.tar.gz
    echo "File successfully downloaded..."
fi
