#!/usr/bin/env bash

# cookbook filename: run-all-scripts

SCRIPTS_DIR='resources/*.sh'

for SCRIPT in $SCRIPTS_DIR; do
  if [ -f "$SCRIPT" ] && [ -x "$SCRIPT" ]; then
    printf "%b" "==> Executing script '$SCRIPT'\n"
    $SCRIPT
  fi
done

exit 0
