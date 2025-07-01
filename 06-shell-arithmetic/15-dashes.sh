#!/usr/bin/env bash

# cookbook filename: dashes
#
# dashes - print a line of dashes
#
# options:
# -c X use char X instead of dashes
# # how many (default 72)
#

LEN=72
CHAR='-'

while (( $# > 0 ))
do
  case $1 in
    [0-9]*)
      LEN=$1
      ;;
    -c)
      shift
      CHAR=${1:--}
      ;;
    *)
      printf 'usage: %s [-c X] [#]\n' "${0##*/}" >&2
      ;;
  esac
  shift
done

echo "LEN: $LEN"
echo "CHAR: $CHAR"

exit 0
