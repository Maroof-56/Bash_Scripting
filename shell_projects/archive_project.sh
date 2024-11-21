#!/use/bin/bash
#$Revision:002$

# Variables , where to perform archive script
BASE=/home/maroof-56/Documents/
DAYS=5
DEPTH=1
RUN=0


#Check given dir is present ?

if [[ ! -d $BASE ]]
then
  echo "directory not exist: $BASE"
  exit 1
fi

#Create archiv folder if not present

if [[ ! -d $BASE/archive ]]
then
   mkdir $BASE/archive
fi


#Check for larger file

for i in $(find $BASE -maxdepth $DEPTH -type f -size +3k -mtime +5 -daystart)  # for both dir & file just omit -type f
do
   if [[ $RUN -eq 0 ]]
   then
       echo " Processing file: $i"                #To check which line is being processed

       # check if file doesnot already have a .gz extension
        if [[  "${i##*.}" != "gz" ]]
        then
            echo "Compressing: $i"                #Which file is compressing
            gzip $i || exit 1
            mv $i.gz $BASE/archive || exit 1

        else
           echo " Already compressed,moving:$i "  
          # if the file is already compressed , just move
            mv $i $BASE/archive || exit 1
        fi
   fi

done



<< comment

In Bash, ${i##*.} is a parameter expansion syntax that removes everything up to and including the last dot (.) 

If i="file.tar.gz", then ${i##*.} results in "gz", which is the file extension after the last dot.
If i="document.txt", ${i##*.} gives "txt".

It means the extension check for every file with gz by removing everything before filename gz just compare gz=gz

comment
