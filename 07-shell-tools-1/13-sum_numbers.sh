#!/usr/bin/env bash

# cookbook_filename: sum_numbers
#
# Sum a list of numbers.
#

ls -l | grep -v '^total' | awk '
  BEGIN { sum = 0 } \
  { sum += $5 } \
  END { printf "Total size [1]: %s bytes\n", sum }
'

ls -l | awk '
  BEGIN { sum = 0 } \
  /^total/{next} { sum += $5 } \
  END { printf "Total size [2]: %s bytes\n", sum }
'

exit 0
