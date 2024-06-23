#!/usr/bin/env bash

# cookbook filename: use_up_option
#
# use and consume an option
#

VERBOSE=0
if [ "$1" = '-v' ]; then
  VERBOSE=1
  shift 1
fi

for FN in "$@"; do
  if [ "$VERBOSE" -eq 1 ]; then
    echo "changing ${FN}..."
  fi
  chmod 0750 "$FN"
done

exit 0
