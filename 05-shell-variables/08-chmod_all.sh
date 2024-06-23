#!/usr/bin/env bash

# cookbook filename: chmod_all
#
# Change permissions on a bunch of files.
#

for FN in "$@"; do
  echo "Changing $FN..."
  chmod 0750 "$FN"
done

exit 0
