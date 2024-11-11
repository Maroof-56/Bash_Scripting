#!/usr/bin/bash


myArray=( 1 2 3 Hello Hi )

length=${#myArray[*]}

for (( i=0 ; i<$length ; i++ ))      # Here using arithmetic operation therefore double paranthesis is required
do
   echo "Value of array index $i is ${myArray[$i]}  "
done

