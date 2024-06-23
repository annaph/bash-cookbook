#!/usr/bin/env bash

# cookbook filename: to_camel_case
#
# convert string to camel case.

echo 'Enter string.'
echo 'Press Ctrl-D to quit!'

while read -r TXT; do
  ARR=($TXT)
  echo "${ARR[@]^}"
done

exit 0
