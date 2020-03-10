#!/bin/sh

INVOCATION=$(sls invoke local -f "$1" -d "$2")

OUTPUT=$(echo "${INVOCATION}" | grep "data" | cut -d ":" -f 2- | sed 's/,$//'| jq -r '.' >> filename.csv)
# echo $OUTPUT
echo "Wrote to file, named: sls_invoke_file.csv"

# if [ "$3" == "" ]
# then
#     "$OUTPUT" >> sls_invoke_file.csv
#     echo "Wrote to file, named: sls_invoke_file.csv"
# else
#     "$OUTPUT" >> "$3"
#     echo "Wrote to file, named: $3"

# fi
# echo $(echo "${OUTPUT}" | awk '{print $2}')

# sls invoke local -f "$1" -d "$2"
# OUTPUT="$(sls invoke local "$*")"
# OUTPUT=$(sls invoke local "$*")
# OUTPUT=$(sls invoke local -f "$1" -d "$2" | tail -1)
# OUTPUT=$(sls invoke local -f "$1" -d "$2" | jq '.data')

# OUTPUT=$(sls invoke local -f "$1" -d "$2" | awk "data")
# var=$(echo $TEST|awk '{print $3}')
# OUTPUT=$(echo "${INVOCATION}" | grep "data" | cut -d ":" -f 3- | echo >> "${3:-sls_invoke_file.csv}")
