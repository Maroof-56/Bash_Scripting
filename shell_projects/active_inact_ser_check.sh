#!/usr/bin/bash

Red=$'\e[1;31m'
Green=$'\e[1;32m'
Blink=$'\e[5m'
Reset=$'\e[0m'

# Note : Try command in terminal manually before executing the script.

#Status=$(systemctl status docker | awk 'NR==3 {print}' | cut -d ":" -f 2 | cut -d '(' -f 1 )          # Not behaving properly , below 2 are recommended
#Status=$(systemctl is-active docker)                      # In this script recommended.
Status=$(systemctl status docker | awk 'NR==3 {print $2}')

if  [[ $Status == "active" ]]
then
      echo "$Green Service is already active...$Reset"
      exit 1

    else
          echo " Service is inactive !!"
          read -p " Do you want to proceed to active the service ? (y/n) : " confirm
              if [[ $confirm == "y" ]]
              then
                echo "$Blink$Red Service is enabling...$Reset"
                systemctl start docker
                echo "$Green Now,service is enable you can use it.$Reset"
               else
                echo   "$Red start service to use it.."
               fi

fi

