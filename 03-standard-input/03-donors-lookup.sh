#!/usr/bin/env bash

# cookbook filename: donors-lookup

grep $1 <<'EOF'
# name amt
pete  $100
joe   $200
sam   $25
bill  $9
EOF

exit 0
