#!/usr/bin/bash


#load=' top -bn1 | grep load | awk '{ printf "%.2f%%\t\t\n" , $(NF-2) }' | cut -d '%' '

#echo $load

#if [[ ${load%.*} > 1 ]] 
#then
#    echo "Load is high : $load"
#else
#    echo "load is normal"
#fi



# Set the threshold
THRESHOLD=0.5

# Get the 1-minute load average
LOAD_1_MIN=$(top -bn1 | grep "load average" | awk '{print $12}' | sed 's/,//')      # can also use cut instead of sed - cut -d "," f1

# Compare the load average with the threshold
if (( $(echo "$LOAD_1_MIN > $THRESHOLD" | bc -l ) )); then
    echo "ALERT: High CPU load detected! Load average (1 min): $LOAD_1_MIN"
    # Additional alert actions (e.g., send an email, log to a file)
    else
        echo "Load is fine "
fi


<< comments
 -b : Batch mode in the top command is a mode of operation that runs top without its interactive interface.
 top -bn1: Runs top in batch mode with one iteration.

 bc -l:

bc is a command-line calculator that evaluates mathematical expressions.
The -l option enables the use of the standard math library, allowing calculations with floating-point numbers.
The output of echo "$LOAD_1_MIN > $THRESHOLD" (e.g., 0.96 > 2.0) is piped (|) into bc, which evaluates it as 1 (true) or 0 (false).

Direct comparisons like > and < work for integers but not for floating-point numbers.
bc -l allows floating-point arithmetic and comparisons.

comments
