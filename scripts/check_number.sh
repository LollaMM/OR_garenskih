#!/bin/bash

echo "Enter a number:"
read number

if (( number > 0 )); then
    echo "$number is positive."
elif (( number < 0 )); then
    echo "$number is negative."
else
    echo "$number is zero"
fi

