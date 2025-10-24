#!/usr/bin/env bash

#
# Simple script to show the difference between:
# $*
# "$*"
# $@
# "$@"
#
# Example of usage:
# input_args one two "three four"
#

printf "Using \$* ~>\n"
for a in $*
do
  echo "   $a"
done

printf "\nUsing \"\$*\" ~>\n"
for a in "$*"
do
  echo "   $a"
done

printf "\nUsing \$@ ~>\n"
for a in $@
do
  echo "   $a"
done

printf "\nUsing \"\$@\" ~>\n"
for a in "$@"
do
  echo "   $a"
done

exit 0
