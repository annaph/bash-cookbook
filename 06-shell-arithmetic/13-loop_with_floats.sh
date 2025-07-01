#!/usr/bin/env bash

# cookbook filename: -
#

seq 1.0 0.1 2.0 |
while read -r NUMBER
do
  echo "$NUMBER"
done

exit 0
