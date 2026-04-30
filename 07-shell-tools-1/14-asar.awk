#!/usr/bin/awk -f

# cookbook filename: asar.awk
#
# Associative arrays in Awk.
# Usage: ls -lR /usr/local | awk -f asar.awk

BEGIN {
  printf "Number of files owned by various users:\n"
}

NF > 7 {
  users[$3]++
}

END {
  for (i in users)
    printf "%s owns %d files\n", i, users[i]
}
