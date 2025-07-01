#!/usr/bin/env bash

# cookbook filename: trackmatch
#

cd resources || exit 1

for CD_TRACK in *
do
  if [[ "$CD_TRACK" =~ ^([[:alpha:][:blank:]]*)-\ ([[:digit:]]*)\ -\ (.*)$ ]]
  then
    echo "~> CD Track:  $CD_TRACK"
    echo "Track number: ${BASH_REMATCH[2]}"
    echo "Track name:   ${BASH_REMATCH[3]}"
    echo '--------------------------------------'
  fi
done

exit 0
