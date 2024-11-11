 #!/usr/bin/bash

read -p "Enter Marks "  marks


if [[ $marks -gt 90 ]]
then
  echo "You are in First division"

elif [[ $marks -lt 90 && $marks -gt 60 ]]
then
  echo "You are in second division"

elif [[ $marks -gt 40 ]]
then
  echo "You are in third class"

else
  echo "You are fail"

fi                       # This indicate condition has end
