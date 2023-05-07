#!/usr/bin/env bash

# cookbook filename: prompt-passwd

read -r -s -p 'Enter a password: ' PASSWD ; printf "%b" "\n"

echo "Password: $PASSWD"

exit 0
