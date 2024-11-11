
#!/usr/bin/bash


# To get value from file  , below for loop will read the content of files.txt

FILE="/home/maroof-56/myscripts/files.txt "
FILE1="/home/maroof-56/shell_projects/"

for name in $( cat $FILE)
do
  echo "Name is $name"
done


for fname in $( cat $FILE1)
do
  echo" Name is $FILE!"
done
