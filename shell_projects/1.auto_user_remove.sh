#!/usr/bin/bash

read -p "Enter the username you want to delete : "  user_name

if  ! id  $user_name &>/dev/null                           # [[ ]] is invalid for id &  dev/null , as it is used for advance conditonal expression.
then
    echo " user: $user_name not exist."
    exit 1
fi


read -p "Are you sure want delete user: $user_name ?  (y/n) : " confirm

if  [[ ! $confirm =~ ^[yY]$ ]]                             # Explanation below
then
    echo "Exiting without changes "
    exit 1
fi


if pgrep -u $user_name &>/dev/null                        # Recommended  Explanation below
then
    echo "Killing the process associated with $user_name..."
    pkill -u $user_name
    # ps -u "$user_account" -o pid= | xargs -r kill
    echo "Process terminated successfully."

else
    echo "No process found with user:$user_name."
fi

loc=$(pwd)
report_file="${user_name}_files_$(date +%Y%m%d)"
echo "Genrating file ownership report..."
find / -user "$user_name" > "report_file"  2>/dev/null      # Exp below
echo "Report generated: $report_file"
echo "Report location is: $loc " 


read -p "Alert !. Are you sure want to delete $user_name from your system ? (y/n) : " del_confirm

if [[  $del_confirm =~ ^[y/Y]$ ]]
then
    sudo userdel $user_name
    echo "$user_name has been successfully deleted."
else
    echo "Exiting without delete"
fi




<< comment
                 ##### COMMENT FOR USER DELETION #####

         [[ ! "$confirm" =~ ^[yY]$ ]] checks if "$confirm" is not "y" or "Y".
         ^: The caret means the start of the string.
         [yY]: A character set that matches either y or Y.
         $: The dollar sign means the end of the string.

         Key Differences Between == and =~:
             == (String Equality Check):
             It performs a simple, exact string comparison.
             Example: "$confirm" == "y" checks if "$confirm" is exactly "y".

             =~ (Regex Matching):
             It allows pattern matching using regular expressions.
             Example: "$confirm" =~ ^[yY]$ checks if "$confirm" is a single character, either "y" or "Y".
             It is more flexible for conditions that involve patterns.
 comment


<< comment
               ##### COMMENT FOR KILL PROCESS #####
                                    Comparison of pgrep vs. ps:

Feature                         	pgrep	                                      ps with Filtering
Simplicity               	Cleaner and more direct                               Requires additional commands like grep or xargs.
Performance              	Faster, as it directly checks for PIDs.               Slightly slower due to listing all processes and filtering.
Readability                    	Easier to understand	                              More verbose and complex.


comment


<< comment
             #####  COMMENT FOR REPORT SECTION #####

/ indicates that the search will start from the root directory (/), meaning it will search the entire filesystem.

-user $user_name:
The -user option restricts the search to files that are owned by the specified user.
$user_name is the variable that contains the username of the account that is being deleted. This ensures that only files owned by this user will be found.

comment
