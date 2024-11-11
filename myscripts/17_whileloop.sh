#!/usr/bin/bash

count=0
num=10



while [[ $count -le $num ]]
do

    echo " Number is $count "
    let count++

done

echo

count1=0
num1=10

while [[ $count1 -le $num1 ]]
do
   echo "Number is $count1"
   let count1+=2
done

