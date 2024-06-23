#!/usr/bin/env bash

# cookbook filename: suffixer
#
# rename files that end in .bad to be .bash

for FN in "$1"/*.bad; do
  mv "$FN" "${FN%bad}txt"
done

exit 0
