#!/usr/bin/env bash

# cookbook filename: check_arg_count
#
# Check for the correct # of arguments.
#

if [ ${#} -lt 3 ]; then
  printf "%b" "Error. Not enough arguments.\n" >&2
  printf "%b" "usage: check_arg_count file1 op file2\n" >&2
  exit 1
elif [ ${#} -gt 3 ]; then
  printf "%b" "Error. Too many arguments.\n" >&2
  printf "%b" "usage: check_arg_count file1 op file2\n" >&2
  exit 2
else
  printf "%b" "Argument count correct. Proceeding...\n"
  exit 0
fi
