#!/usr/bin/bash


# ping -c 1 www.google.com   # when execute it will print output in terminal , if u dont want this


# More info in documents
# I stored below command  output in redirect.log file , & u can see the ouput using cat  filename

ping -c 1 www.google.com > redirect.log

ping -c 1 www.maroof.com > maroof.log
