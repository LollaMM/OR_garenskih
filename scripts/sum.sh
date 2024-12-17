#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Provide exactly two numbers as arguments"
    exit 1
fi

num1=$1
num2=$2

if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Wrong input"
    exit 1
fi

sum=$((num1 + num2))
echo "$sum"

