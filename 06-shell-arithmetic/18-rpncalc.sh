#!/usr/bin/env bash

# cookbook filename: rpncalc
#
# Simple RPN command-line (integer) calculator.
#
# Takes the arguments and computes with them of the form: a b op
# Allow the use of x instead of * for multiplication.
#

RESULT=0

function evaluate {
  local operand_1=$1
  local operand_2=$2
  local operator=$3

  case $operator in
      '+')
      RESULT=$((operand_1 + operand_2))
      ;;
      '-')
      RESULT=$((operand_1 - operand_2))
      ;;
      '*')
      RESULT=$((operand_1 * operand_2))
      ;;
      '/')
      RESULT=$((operand_1 / operand_2))
      ;;
      *)
      printf "Error: Unsupported operator '%s'\n" "$operator" >&2;
      exit 1
      ;;
  esac
} # end of evaluate

if [ $# -lt 3 ] || [ $(($# % 2)) -eq 0 ]
then
  echo 'usage: calc number number op [ number op ] ...'
  echo "use 'x' or '*' for multiplication"
  exit 1
fi

evaluate "$1" "$2" "${3/x/*}"
shift 3

while [ $# -gt 0 ]
do
  evaluate "$RESULT" "$1" "${2/x/*}"
  shift 2
done

echo "Result: $RESULT"

exit 0
