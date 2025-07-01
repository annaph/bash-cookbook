#!/usr/bin/env bash

# cookbook filename: -
#

FILE=$1

case $FILE in
  *.gif)
    printf "This is a gif: %s\n" "$FILE"
    ;;
  *.png)
    printf "This is a png: %s\n" "$FILE"
    ;;
  *.jpg)
    printf "This is a jpg: %s\n" "$FILE"
    ;;
  *.tiff | *.TIFF)
  printf "This is a tiff: %s\n" "$FILE"
    ;;
  *)
    printf "File not supported: %s\n" "$FILE"
    ;;
esac

exit 0
