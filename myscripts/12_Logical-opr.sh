#!/usr/bin/bash

read -p "Enter you age: " age 
read -p "Enter country: " cont

#if [[ $age -ge 18 ]] && [[ $cont == "Indian" ]]  # opening & closing square bracket should have space before & after that
#then
#   echo "You can vote"
#else
#   echo "You can't vote."
#fi


if [[ $age -ge 18  && $cont == "Indian" ]]
then
    echo "You can vote "

else
   echo "You can't vote,bcoz you are from country - $cont "

fi

