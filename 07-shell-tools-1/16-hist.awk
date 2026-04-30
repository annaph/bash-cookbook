#!/usr/bin/awk -f

# cookbook filename: hist.awk
#
# Histogram in Awk.
# Usage: ls -lR /usr/local | awk -f hist.awk

function max(arr, big) {
  big = 0;
  for (i in arr) {
    if (arr[i] > big) {
      big = arr[i];
    }
  }

  return big;
}

NF > 7 {
  users[$3]++
}

END {
  maximum = max(users);
  
  for (i in users) {
    scaled = int((60 * users[i]) / maximum) + 1;
    printf "%-10.10s [%8d]: ", i, users[i];

    for (i=0; i<scaled; i++) {
      printf "#";
    }
    printf "\n";
  }
}
