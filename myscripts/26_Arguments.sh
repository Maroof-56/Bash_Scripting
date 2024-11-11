#!/usr/bin/bash


# To access the arguments


echo "1st  Arguments is $1"   # This output will print till is nothing after that so we can provide its arguments in runtime means while giving execution together for ex below
echo "2nd  Arguments is $2"   # maroof-56@maroof-56-VirtualBox:~/myscripts$ bash 26_Arguments.sh maroof shaikh


# To get all the arguments   (For all the ouput to get, im providing input in terminal while execution)

echo "All the arguments are - $@ "

# To get the number of arguments

echo "Number of arguments are - $#"


# For loop to acces the value from arguments

for filename in $@
do
     echo "Copying file - $filename"
done

# For reference check below 

#maroof-56@maroof-56-VirtualBox:~/myscripts$ bash 26_Arguments.sh maroof shaikh 56
#1st  Arguments is maroof
#2nd  Arguments is shaikh
#All the arguments are - maroof shaikh 56 
#Number of arguments are - 3

