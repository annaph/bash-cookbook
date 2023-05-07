#!/usr/bin/env bash

# cookbook filename: func_choice.3

source ./06-func_choice.1.sh

choice 'Enter you favorite color, if you have one: '
if [ -n "$CHOICE" ]; then
  printf "%b" "You choose: $CHOICE\n"
else
  printf "%b" "You don't have a favorite color.\n"
fi

exit 0
