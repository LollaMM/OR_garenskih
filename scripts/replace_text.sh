#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Usage: file_path old_word new_word"
    exit 1
fi

file=$1
old_word=$2
new_word=$3

if [ ! -f "$file" ]; then
    echo "File does not exist"
    exit 1
fi

sed -i "s/\b$old_word\b/$new_word/g" "$file"

