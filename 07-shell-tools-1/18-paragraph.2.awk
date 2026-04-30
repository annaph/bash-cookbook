#!/usr/bin/awk -f

# cookbook filename: para.awk
#
# Search for a phrase in a document.
# Usage: awk -f para.awk < searchthis.txt

# TODO: concat strings

BEGIN {
  paragraph = "aaa";
  flag = 0;
}

/keyphrase/ {
  flag = 1;
  printf "~> Found keyphrase:\n";
}

/^[[:blank:]]*$/ {
  if (flag = 1) {
    printf "%s", paragraph;
  }

  flag = 0;
  paragraph = "";
}

END {
  printf "%s", paragraph;

  printf "\n";
}
