#!/bin/bash

# Define the root directory to search in (can be adjusted as needed)
BASE_DIR="/home/maroof-56/"

# Find the top 10 largest files
echo "Finding the top 10 largest files in the file system..."

# Using find to search for all files, then du to get their sizes, and sort to find the largest ones

find "$BASE_DIR" -exec du -h {} + | sort -rh | head -n 10
#find "BASE_DIR" -type f  -exec du -h {} + 2>/dev/null | sort -rh | head -n 10     # for file only





<< comment

      Here is the breakdown of the find command

       1. -exec du -h {} +
         It means execute du in find command with human readable at once instead of specified 10 times run du
         + is used for efficiency,to search whole 10 files at once instead 10 times run du

         Note : without -exec command not succeed, you have to specified it with {] 
                du /path/to/file with known file_name ( this is how u can use du without -exec )

       2. sort -rh
         This command sort the executed file in reverse human readable format

       3. head -n 10
         implies we want only 10 file or  directory.

       4. 2>/dev/null   ( Optional )
          redirect the error message to /dev/null

          file descriptors are used to refer to different types of I/O streams:

          0: Standard input (stdin)
          1: Standard output (stdout)
          2: Standard error (stderr

  comment
