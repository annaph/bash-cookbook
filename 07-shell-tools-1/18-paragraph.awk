#!/usr/bin/awk -f

# cookbook filename: para.awk
#
# Search for a phrase in a document.
# Usage: awk -f para.awk < searchthis.txt

# TODO: concat strings

BEGIN {
  flag = 0;
}

/keyphrase/ {
  flag = 1;
  printf "~> Found keyphrase:\n";
}

flag == 1 {
  print
}

/^[[:blank:]]*$/ {
  flag = 0;
}

END {
  printf "\n";
}
