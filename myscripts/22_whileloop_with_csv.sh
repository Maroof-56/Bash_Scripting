#!/usr/bin/bash


#while  IFS="," read id name age          # This code will read the file , but it will also give output of 1st row whih is not required although u can see the output  of below code 
#do
  # echo "Id is $id"
#   echo "Name is $name"
#   echo "Age is $age"
#done < test.csv



# If dont reuired  1st row or anything u can use

cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age 
do
       echo "Id is $id"
       echo "Name is $name"
       echo "Age is $age"
done

# IFS stands for Internal Field Separator. It's a special shell variable in Bash that defines the characters used to split input text into fields.
# awk is a powerful text-processing tool in Linux and Unix, designed to perform complex text processing and data extraction tasks on files or standard input.
# awk 'NR!=1 {print}': Processes each line of test.csv except the first.
# NR: This is a built-in awk variable representing the "Record Number" (or line number) of the current line being processed.

# cat test.csv | awk 'NR!=1 {print}'   ( First check like & then apply on loop for better performance)


