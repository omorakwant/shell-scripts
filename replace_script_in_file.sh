#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <file_path> <search_term> <replace_term>"
    exit 1
fi

FILE_PATH="$1"
SEARCH_TERM="$2"
REPLACE_TERM="$3"

# Check if the file exists
if [ ! -f "$FILE_PATH" ]; then
    echo "File not found: $FILE_PATH"
    exit 1
fi

# Replace text in the specified file
sed -i "s/$SEARCH_TERM/$REPLACE_TERM/g" "$FILE_PATH"

echo "Replacement done in '$FILE_PATH': '$SEARCH_TERM' -> '$REPLACE_TERM'"

