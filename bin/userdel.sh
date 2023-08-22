#!/bin/bash

# Check if the script is being run as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root."
    exit 1
fi

# Loop through the passwd.txt file and remove users
cat /root/bin/passwd.txt | while read USER_NAME _
do
    # Check if the user exists
    if id "$USER_NAME" &>/dev/null; then
        # Delete the user and their home directory
        userdel -r "$USER_NAME"
        echo "User $USER_NAME has been removed."
    else
        echo "User $USER_NAME does not exist. Skipping..."
    fi
done

echo "All users have been removed."
