#!/usr/bin/env bash
# cookbook filename: interactive

echo "==> Shell option flags: $-"

case "$-" in
  *i*)
    echo 'Interactive mode ON!'
    ;;
  *)
    echo 'Interactive mode OFF!'
    ;;
esac

exit 0
