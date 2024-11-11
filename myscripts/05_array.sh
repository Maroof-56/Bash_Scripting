#!/usr/bin/bash

#ARRAY 

# Provide value to space seprated  not comma seprated like programming 
#for multiple value at once use " "

myarray=(1 2 3 my "Not your")

echo "All value in array is ${myarray[*]} "
echo "${myarray[3]}"

# use # to get length of array

echo  "Lenght of array is ${#myarray[*]} "

# to get specific value  from array

echo "Values is ${myarray[*]:0:3}"     # it will print value from start till  3

# to update an array

myarray+=(New 6 7)

echo "value of new array are ${myarray[*]}"
