#!/usr/bin/env bash

# cookbook filename: checkstr
#
# if statement
# test a string to see if it has any length
#

VAR="$1"

if [ -n "$VAR" ]
then
  echo 'has text'
else
  echo 'zero length'
fi

if [ -z "$VAR" ]
then
  echo 'zero length'
else
  echo 'has text'
fi

exit 0
