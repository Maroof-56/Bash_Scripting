#!/usr/bin/bash

echo "Choose option"

echo " a-> for print date."
echo " b-> for list of scripts."
echo " c-> to chec the current location."


read choice

#case $choice in
#      a) date;;
#      b) ls;;
#      c) pwd;;
#      *) echo "Invalid option"
#esac                            #to tell that case condition is ended reverse of case

# Can also do that 
case $choice in
      a) 
        echo "Todays date is:"
        date
        echo "Ending"
        ;;               # Indicate the end of  this condtion
      b) ls;;
      c) pwd;;
      *) echo "Invalid option"
esac
