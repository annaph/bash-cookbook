#!/usr/bin/env bash

# cookbook filename: read_names
#
# read names one at a time and build a comma-separated list

echo 'Enter names.'
echo 'Press Ctrl-D to quit!'

while read -r NAME; do
  LIST="${LIST}${LIST:+,}${NAME}"
done

echo "Comma-separated list of name ~~> $LIST"

exit 0
