

In the given directory,if you find files more than a given size ex 20mb or files older than given days ex 10 days

compress those files & move in 'archive' folder



Purpose of the script

 - suppose there is a process that generate logs on a regular basis at end it will full the disk so u can 
   make the script that compress tht log & store in archive folder or u can delete , anything..


Steps of scripts


 - Provide the path of directory
 - Check if the dir is present or not
 - create archive folder if not already present
 - find all the files with size more than 20mb
 - compress each file
 - move compress file in archive folder
 - make cronjob to run the script everyday at given time 
