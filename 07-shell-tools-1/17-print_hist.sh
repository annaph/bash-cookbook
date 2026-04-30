#!/usr/bin/env bash

# cookbook filename: print_hist
#
# Printthe histogram
# Pipe "ls -l" into this script.

declare -A ARR
BIG=0

#
# Populate ARR
#
while read -r -a LSL; do
	if ((${#LSL[*]} > 7)); then
		INDEX=${LSL[3]}
		((ARR[$INDEX] += 1))
	fi
done

#
# Find biggest entry in ARR
#
for INDEX in "${!ARR[@]}"; do
	if ((ARR[$INDEX] > BIG)); then
		BIG=${ARR[$INDEX]}
	fi
done

#
# Print histogram
#
for INDEX in "${!ARR[@]}"; do
	VAL=${ARR[$INDEX]}
	SCALED=$((((60 * VAL) / BIG) + 1))

	printf "%-10.10s [%8d]: " "$INDEX" "$VAL"
	for ((i = 0; i < SCALED; i++)); do
		printf "#"
	done
	printf "\n"
done

exit 0
