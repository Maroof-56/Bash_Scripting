#!/usr/bin/bash


# Exit - to stop the script

#if [[ $# -eq 0 ]]      # $# - represent number of arguments passess
#then
#    echo "Provide atleast one ags"
#    exit 1
#fi

#echo "Arguments  one is $1"
#echo "Arguments two is $2"

#shift
#echo "Description is $@"


# Output

#maroof-56@maroof-56-VirtualBox:~/myscripts$ bash 30_exit.sh 
#Provide atleast one ags


# Exit status - To check the status of previous command i.e sucess or not
  # echo $?   - To check


# Making example in script

read -p "Which site you want to check? " site

ping -c 1 $site
#sleep 3s   # this command is run successfully thats y $? comes to 0 & print succesfully connected , although if our ping command not work properlly

if [[ $? -eq 0 ]]
then
    echo "Successfully connected to $site"
else
    echo "Unable to  connect $site"
fi
