
#!/usr/bin/bash

Red=$'\e[1;31m\e'             # 1 - for bold
Green=$'\e[1;32m\e[5m'        # e[5m - blink the o/p
Blue=$'\e[1;34m'

while true
do
   clear
   echo " Time is :  $Red $(date +%T)"
   sleep 1s
done








#  logic behind project

   << comment

      1. date - date +%T      ( print full date)
      2. 2 times above command   - ( print 2 times)
      3. put  sleep 1s          ( print 2nd time after 1s)
      4. clear   ( Now we want times in blank terminal so before command)
      5. infinite loop  (we want continuous of second)
      6. Put  together
      7. For color output of terminal see web for more detail.
   comment
