#!/usr/bin/bash

# How to store key value  

declare -A myArray

myArray=( [name]=Maroof [age]=44 [city]=mumbai )

echo " Name is ${myArray[name]}"
