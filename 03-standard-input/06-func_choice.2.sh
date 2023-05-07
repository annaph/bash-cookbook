#!/usr/bin/env bash

# cookbook filename: func_choice.2

source ./06-func_choice.1.sh
THIS_PACKAGE='2023-03-26'

until [ "$CHOICE" = "y" ]; do
  printf "%b" "This package's date is $THIS_PACKAGE\n"
  choice 'Is this correct [Y/<New date>]:'
  if [ -z "$CHOICE" ]; then
    CHOICE='y'
  elif [ "$CHOICE" != "y" ]; then
    printf "%b" "Overriding $THIS_PACKAGE with $CHOICE\n"
    THIS_PACKAGE=$CHOICE
  fi
done

# Build the package here
echo "Building package with date: $THIS_PACKAGE..."

exit 0
