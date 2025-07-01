#!/usr/bin/env bash

# cookbook filename: check_arg_count
#
# Check for the correct # of arguments
#

if (( $# < 3 ))
then
  printf "%b" "Error: Not enough arguments.\n"
  printf "%b" "usage: myscript file1 op file2\n"
  exit 1
elif (( $# > 3 ))
then
  printf "%b" "Error: Too many arguments.\n"
  printf "%b" "usage: myscript file1 op file2\n"
  exit 2
else
  printf "%b" "Argument count correct. Proceeding...\n"
  exit 0
fi
