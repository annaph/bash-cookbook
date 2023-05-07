#!/usr/bin/env bash

# cookbook filename: func_choose

# Let the user make a choice about something and execute code based on
# the answer.
#
# Called like : choose <default (y or n)> <prompt> <yes action> <no action>
# e.g. choose 'y' \
#       'Do you want to watch a movie' \
#       'vlc' \
#       'printf "%b" "See you later Anna.\n"'
#
# Returns: nothing
function choose {
  local default="$1"
  local prompt="$2"
  local yes_action="$3"
  local no_action="$4"
  local answer

  read -r -p "$prompt " answer
  if [ -z "$answer" ]
  then
    answer=$default
  fi

  case "$answer" in
    [yY1] ) eval "$yes_action"
      ;;
    [nN0] ) eval "$no_action"
      ;;
    * ) printf "%b" "Unexpected answer '$answer'!\n" 1>&2
      ;;
  esac
} # end of function choose

"$@"
