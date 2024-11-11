#!/usr/bin/bash


# To see debugging process line by line - set -x at top of script 

# set -e  - to exit script when command fails

set -e

pwd
date
cd /root    # At this command it give error & print next one but using set -e it stop prccess here
hostname


# Example

  # Before set -e
#maroof-56@maroof-56-VirtualBox:~/myscripts$ bash 37_debugging.sh 
#/home/maroof-56/myscripts
#Thu Nov  7 05:26:12 PM IST 2024
#37_debugging.sh: line 11: cd: /root: Permission denied
#maroof-56-VirtualBox

  # After set -e
#maroof-56@maroof-56-VirtualBox:~/myscripts$ nano 37_debugging.sh
#maroof-56@maroof-56-VirtualBox:~/myscripts$ bash 37_debugging.sh 
#/home/maroof-56/myscripts
#Thu Nov  7 05:27:35 PM IST 2024
#37_debugging.sh: line 12: cd: /root: Permission denied

