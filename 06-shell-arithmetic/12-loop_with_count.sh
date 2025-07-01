#!/usr/bin/env bash

# cookbook filename: -
#

for (( i=1, j=1 ; i < 4 ; i++, j=j*3 ))
do
  echo "($i -> $j)"
done

exit 0
