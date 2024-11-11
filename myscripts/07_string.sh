#!/usr/bin/bash

myVar="Hello how r u been?"

myVarlength=${#myVar}

echo "Length of myVar is $myVarlength"

echo "Upper case is  ${myVar^^}"   # 0/p - Upper case is  HELLO HOW R U BEEN?

echo "Lower case is  ${myVar,,}"   # o/p - Lower case is  hello how r u been?

# To replace string

newVar=${myVar/been/maroof}

echo "Replace sentence is  ${newVar}"  # o/p - Replace sentence is  Hello how r u maroof?


# To remove/slice string (to get spcific word )

echo "After slice ${myVar:6:7}"  # o/p - After slice how r u



