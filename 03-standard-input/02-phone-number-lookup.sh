#!/usr/bin/env bash

# cookbook filename: phone-number-lookup

grep $1 <<EOF
mike  x.123
joe   x.234
sue   x.555
pete  x.818
sara  x.822
bill  x.919
EOF

exit 0
