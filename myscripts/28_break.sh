#!/usr/bin/bash


# Example of break in loop

# for loop to confirm given numbe is present or not

n=7

for i in 1 2 3 4 5 6 7 8 9 10
do
   if [[ $n -eq $i ]]
   then
       echo "Skipping $n"
       continue
   fi
   echo "Number is $i"
done


#n=6

#for i in 1 2 3 4 5 6 7 8 9
#do
#   if [[ $n -eq $i ]]
#     then
#      echo " $n is Present !"
#      break
#   fi
#   echo "Number is $i"
#done
