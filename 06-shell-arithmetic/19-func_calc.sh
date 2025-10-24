#!/user/bin/env bash

# cookbook filename: func_calc
#
# Trivial command-line calculator
#

function calc {
  awk "BEGIN { print \"Result: \" $* }"
} # end of calc

calc "$@"

exit 0
