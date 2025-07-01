#!/usr/bin/env bash

# cookbook filename: checkfile
#
# Check file characteristics
#

DIRPLACE='.'
INFILE='resources/input.txt'
OUTFILE='resources/output.txt'

if [ -d "$DIRPLACE" ]
then
  cd "$DIRPLACE" || exit 1
  if [ -e "$INFILE" ]
  then
    if [ -w "$OUTFILE" ]
    then
      cat "$INFILE" >> "$OUTFILE"
    else
      echo "Cannot write to $OUTFILE"
      exit 2
    fi
  else
    echo "Cannot read from $INFILE"
    exit 3
  fi
else
  echo "Cannot cd into $DIRPLACE"
  exit 4
fi
