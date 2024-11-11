#!/usr/bin/bash
#$Revision:001$
#$Fri Nov  8 04:44:23 AM IST 2024$


PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

DIR_PATH=/home/maroof-56/shell_projects
DAYS=10
DEPTH=1
RUN=0


# Check if the directory is present or not

if [ ! -d $DIR_PATH ]
then
    echo "directory does not exist: $DIR_PATH "
    exit 1
fi


# Create archive folder if not present

if [ ! -d $DIR_PATH/archive ]       #  checking inside dir archive folder is present?
then
    mkdir $DIR_PATH/archive         # if not make directory archive
fi


# Finding list of files larger than 20MB

for i in $(find $DIR_PATH -maxdepth $DEPTH -type f -size 400c)       # find in path, -maxdepth $DEPTH - indicates 1 only search in this file not  on other , -type - file ,-size - +20MB greater than 20Mb.
do

     if [ $RUN -eq 0 ]
     then

         # echo " [$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $PATH/archive "

          gzip $i || exit 1                # compress it or exit , only one execute
          mv $i.gz $DIR_PATH/archive || exit 1    # move zip to that location
     fi

done
