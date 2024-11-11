#!/usr/bin/bash


# Script should be execute with sudo/root access only
if [[ ${UID} -ne 0 ]]
then
    echo "Run with root"
    exit 1
fi

# User should private atleast one argument as username else guide him

if [[ $# -lt 1 ]]
then
    echo " Usage : ${0} user_name [Comments].."
    echo ' Create a user with USER_NAME & Optional comments '
    exit
fi

# Store 1st arguments as a user name

USER_NAME="${1}"
#echo $USER_NAME


# In case of more than  one arguments , store it as comments

shift
COMMENTS="${@}"
#echo $COMMENTS

# Generate password for user

PASSWD=$(date +%s%N)                            # It will give times in second with nano
#echo $PASSWD

# Create user

useradd -c "$COMMENTS" -m "$USER_NAME"

# Check if user is successfully created or not

if [[ $? -ne 0 ]]
then
    echo "Account not created"
    exit 1
fi

# Set passwd for user.

#echo $PASSWD | passwd --stdin $USER_NAME
echo "Please set password for the user:$USER_NAAME"
passwd "$USER_NAME"

# Check if passwd is successfully set or not

if [[ $? -ne 0 ]]
then
    echo "Password not successfully set."
    exit 1
fi

# Force passwd change on first login

passwd -e $USER_NAME

# Display username,passwd & host where the user has created

echo
echo "User account successfuly created."
echo "Username: $USER_NAME"
echo "Password: $PASSWD"
echo "Host: $(hostname)"
echo
