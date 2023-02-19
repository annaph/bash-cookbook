#!/usr/bin/env bash
# cookbook filename: multiple-redirects

# Call like this:
# multiple-redirects 3> file.three 4> file.four 5> file.five

echo 'Output 3' >&3
echo 'Output 4' >&4
echo 'Output 5' >&5

exit 0
