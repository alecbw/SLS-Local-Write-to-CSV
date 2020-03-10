#!/bin/sh

INVOCATION=$(sls invoke local -f "$1" -d "$2")

OUTPUT=$(echo "${INVOCATION}" | grep "data" | cut -d ":" -f 2- | sed 's/,$//'| jq -r '.' >> sls_invoke_file.csv)

echo "Wrote to file, named: sls_invoke_file.csv"
