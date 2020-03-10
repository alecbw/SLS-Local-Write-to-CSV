#!/bin/sh
echo "This far"
echo "$1"
echo "$2"
OUTPUT="$(sls invoke local "$*")"
echo "This far2"

echo "${OUTPUT}"
echo "this far 3 "
# sls invoke local -f "$1" -d "$2"
