#!/usr/bin/bash


# To create a user , provide username & description 


#echo "Creating user"
#echo "Username is $1"

#echo "Description is $2"


#maroof-56@maroof-56-VirtualBox:~/myscripts$ bash 27_shif_args.sh maroof test for linux
#Creating user
#Username is maroof
#Description is test

# In above arguments passing it is not recognize full test for linux instead only test i capture
# But using qutation " " it will read & print as it is -  check if u want

# NOW WE ARE USING SHIFTING TO OVERCOME THIS PROBLEM ,new never now that what it has to do in such case

# SHIFTING


echo "Creating username"
echo "username is $1"

shift                          # SHIFT USE HERE
echo "description is $@"       # Consider desc as a whole


# See output

#maroof-56@maroof-56-VirtualBox:~/myscripts$ bash 27_shif_args.sh maroof test for linux
#Creating username
#username is maroof
#description is test for linux

