#!/bin/bash

add() {
    echo $(($1 + $2))
}

subtract() {
    echo $(($1 - $2))
}

multiply() {
    echo $(($1 * $2))
}

divide() {
    if [ $2 -eq 0 ]; then
        echo "division by zero"
    else
        echo $(($1 / $2))
    fi
}

echo "Enter a number:"
read num1

echo "Enter another number:"
read num2

echo "Enter an operator (+, -, *, /):"
read operator

case $operator in
    +)
        result=$(add $num1 $num2)
        ;;
    -)
        result=$(subtract $num1 $num2)
        ;;
    \*)
        result=$(multiply $num1 $num2)
        ;;
    /)
        result=$(divide $num1 $num2)
        ;;
    *)
        echo "Wrong input"
        exit 1
        ;;
esac

echo "$result"

