#!/bin/bash
users="git jenkins docker admin"
for user in $users; do
        if id "$user" &>/dev/null; then
                echo "User $user alredy exists"
        else
                useradd "$user"
                if [ $? -eq 0 ]; then
                        echo "User $user created"
                else
                        echo "Failed to create user $user"
                fi
        fi
done
echo "------------------------------"
echo "Listing all the existing users"
echo "------------------------------"
for user in $users; do
        if id "$user" &>/dev/null; then
                echo "$user"
        fi
done

