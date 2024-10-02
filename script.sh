#!/bin/sh

# Возможное улучшение кода, читать id снаружи:
# if [ "$#" -ne 1 ]; then
    # echo "[$0]: id is required."
    # exit 1
# fi

# in="$1"

# addr="https://stepik.org/api/users/$in"

addr="https://stepik.org/api/users/256"

raw=$(curl -s $addr)
echo "$raw" | jq '.users[0].id'

# echo "$raw" | jq '.users[0].first_name'