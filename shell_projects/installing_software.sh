#!/usr/bin/bash

Red=$'\e[1;31m'
Reset=$'\e[0m'
if [[ $# -eq 0 ]]
then
    echo "Usage : Provide software name to installl ! "
    exit 1
fi

if [[ ${UID} -ne 0 ]]
then
    echo "Please run by sudo privilege or root user"
    exit 1
fi


for software in $@
do
#    if which $software &> /dev/null                                  # Not behaving properly  , reason below , ex which docker try in terminal to understand.
    if dpkg -l | grep -q "^ii.*$software"                            #  Explanation below
   then
       echo "$Red $software is already present.$Reset".

    else
         echo "$Red $software not found.$Reset"
         read -p  "Do you want to install $software ?. (y/n) : " confirm

           if [[ $confirm == "y" ]]
            then
                echo "Installing $sotware..."
                apt install $software -y &> /dev/null

                if [[ $? -eq 0 ]]
                then
                    echo " $software successfully installed."
                else
                   echo  "$Red Unable to install $software.$Reset"
                fi

          else
               echo "User rejected to install $software."
          fi
fi
done



 << comment

  which- simply checks for the existence of a command in the system’s PATH—it doesn’t verify that the software package is installed and managed by apt or dpkg.
   Here's why this is a problem

     Command-Only Check:which will consider it "installed," even if the package is incomplete, manually installed, or not properly configured

     Command vs Package Name Difference: which only checks if there’s a command available but doesn’t account for package details.

    No Package Verification: which doesn’t interact with apt or dpkg, so it won’t confirm that the software is fully installed or up-to-date. 


 dpkg

    dpkg -l: This command lists all installed packages on the system.

    | grep -q "^ii.*$software":grep -q: The -q option makes grep "quiet," so it doesn't print any output; it only returns a status code (0 if it finds a match, 1 if it doesn’t).

   ^ii.*$software:^ii: The ii part indicates that the package is installed (ii means "installed and fully configured" in dpkg output). The ^ at the beginning means it should be at the start of the line.

   .*$software: Matches any characters (represented by .*) before finding $software anywhere in the line
comment
