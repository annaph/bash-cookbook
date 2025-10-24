#!/usr/bin/env bash

# cookbook filename: dbinit.2
#

DB_LIST="db1 db2 db3"

COUNTER=0
PS3="$COUNTER inits > "

select DB in $DB_LIST
do
  if [ -n "$DB" ]
  then
    echo "Initialising database: $DB"
    PS3="$((COUNTER = COUNTER + 1)) inits > "
  fi
done

exit 0
