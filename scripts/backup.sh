#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: source_dir dest_dir"
    exit 1
fi

source_dir=$1
dest_dir=$2

if [ ! -d "$source_dir" ]; then
    echo "$source_dir does not exist"
    exit 1
fi

mkdir -p "$dest_dir"

current_date=$(date +%d-%m-%Y)

for file in "$source_dir"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        new_filename="${filename%.*}_$current_date.${filename##*.}"
        cp "$file" "$dest_dir/$new_filename"
        echo "Файл $filename copied to $dest_dir/$new_filename"
    fi
done

