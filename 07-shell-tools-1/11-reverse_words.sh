#!/user/bin/env bash

# cookbook filename: reverse_words
#
# Reverse the words on each line.
#

awk '{ \
  for(i=NF; i>0; i--){ \
    printf "%s ", $i \
  } \
  printf "\n" \
}' < resources/person.txt

exit 0
