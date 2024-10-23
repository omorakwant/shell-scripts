#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <search_term> <replace_term>"
    exit 1
fi

SEARCH_TERM="$1"
REPLACE_TERM="$2"

# Find files and replace text
grep -RiIl "$SEARCH_TERM" . | xargs sed -i "s/$SEARCH_TERM/$REPLACE_TERM/g"

echo "Replacement done: '$SEARCH_TERM' -> '$REPLACE_TERM'"

