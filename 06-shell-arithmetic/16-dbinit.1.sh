#!/usr/bin/env bash

# cookbook filename: dbinit.1
#

DB_LIST="db1 db2 db3"

select DB in $DB_LIST
do
  echo "Initializing database: $DB"
done

exit 0
