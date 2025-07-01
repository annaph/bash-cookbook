#!/usr/bin/env bash

# cookbook filename: -
#

STATUS_FILE='resources/status.txt'

cat $STATUS_FILE |
while read -r TAG NAME
do
  if [[ "$TAG" == \? ]]
  then
    printf "%s\n" "$NAME"
  fi
done

exit 0
