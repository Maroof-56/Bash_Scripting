#!/usr/bin/bash


read -p "Which site you want to enter " site

ping -c 1 $site &> /dev/null

if [[ $? -eq 0 ]]
then
   echo "Successfully connected to $site"
else
   echo "Unable to connect to $site"
fi


# Only useful info it gives

# maroof-56@maroof-56-VirtualBox:~/myscripts$ bash 34.1_redirect.sh 
#Which site you want to enter www.google.com
#Successfully connected to www.google.com

