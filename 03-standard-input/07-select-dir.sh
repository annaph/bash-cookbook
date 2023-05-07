#!/usr/bin/env bash

# cookbook filename: select-dir

rootDirectories=$(for entry in /*; do [ -d "$entry" ] && echo "$entry"; done)
directoryList="Finished $rootDirectories"

PS3='Directory to process? ' # Set a useful select prompt

until [ "$directory" == "Finished" ]; do
  printf "%b" "\n\nSelect a directory to process:\n" 1>&2

  # User types a number which is stored in $REPLY, but
  # select returns the value of the entry
  select directory in $directoryList; do
    if [ "$directory" == "Finished" ]; then
      echo 'Finished processing directories.'
      break
    elif [ -n "$directory" ]; then
      echo "You chose number $REPLY, processing '$directory'..."
      break
    else
      echo 'Invalid selection!'
    fi # end of select user's selection
  done # end of select a directory
done # end of until directory == Finished

exit 0
