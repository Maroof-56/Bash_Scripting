#!/usr/bin/bash


#Math  Operation 


x=9
y=7


# mul=$x*$y

# echo "$mul"  # o/p - 9*7   (Nothing it will  do)

# using let we can do 

let mul=$x*$y   # similarly can do more op

echo "$mul"

# one more method in one line 

echo "Sub $(($x-$y))"
echo
echo "add $(($x+$y))"
