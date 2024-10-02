#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "[$0]: id is required."
    exit 1
fi

in="$1"

addr="https://stepik.org/api/users/$in"

raw=$(curl -s $addr)
echo "$raw" | jq '.users[0].first_name'
echo "$raw" | jq '.users[0].id'