#!/bin/bash

if [ -z "$1" ]; then
    echo "Provide a number as an argument"
    exit 1
fi

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Wrong number"
    exit 1
fi

number=$1
while [ $number -ge 0 ]; do
    echo $number
    ((number--))
done
