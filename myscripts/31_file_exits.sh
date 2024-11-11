#!/usr/bin/bash


#FILEPATH="/home/maroof-56/myscripts/test.csv"
FILEPATH="/home/maroof-56/myscripts/random.csv"


if [[ -f  $FILEPATH ]]
then
    echo "File Exits"
else
    echo "File not exits"
    exit 1
fi




# if [ -d folder_name ]  if folder exist command
# if [ ! -d folder_name ] if folder not exist


# if [ -f file_name ]  if file exits
# if [ ! -f file_name ]  if not exist
