#!/usr/bin/bash

read -p "Enter the username to delete: " user_account

# Check if the user exists
if ! id "$user_account" &>/dev/null; then
    echo "User $user_account does not exist. Exiting."
    exit 1
fi

# Confirm deletion
read -p "Are you sure you want to delete $user_account? [y/N]: " confirm
if [[ ! "$confirm" =~ ^[yY]$ ]]; then
    echo "Exiting without changes."
    exit 1
fi

# Kill user processes
if pgrep -u "$user_account" &>/dev/null; then
    echo "Killing processes for $user_account..."
    pkill -u "$user_account"
    echo "Processes terminated."
else
    echo "No processes found for $user_account."
fi

# Generate a report of user-owned files
report_file="${user_account}_files_$(date +%Y%m%d).txt"
echo "Generating file ownership report..."
find / -user "$user_account" > "$report_file" 2>/dev/null
echo "Report generated: $report_file"

# Delete the user account
read -p "Do you want to delete $user_account? [y/N]: " delete_confirm
if [[ "$delete_confirm" =~ ^[yY]$ ]]; then
   sudo userdel "$user_account" && echo "User $user_account has been deleted."
else
    echo "Exiting without deleting the account."
fi
