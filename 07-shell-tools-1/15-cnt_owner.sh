#!/usr/bin/env bash

# cookbook filename: cnt_owner
#
# Count owners of a file using bash.
# Pipe "ls -l" into this script.

declare -A ARR

while read -r -a LSL; do
	if ((${#LSL[*]} > 7)); then
		INDEX=${LSL[3]}
		((ARR[$INDEX] += 1))
	fi
done

printf "Number of files owned by various users:\n"

for INDEX in "${!ARR[@]}"; do
	echo "$INDEX owns ${ARR[$INDEX]} files"
done

exit 0
