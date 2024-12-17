#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Provide file path as an argument"
    exit 1
fi

file=$1
if [ ! -f "$file" ]; then
    echo "File does not exist"
    exit 1
fi

while IFS= read -r line; do
    echo "$line"
done < "$file"

