#Skripta za računanje faktorijela:

#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

number=$1
factorial=1

for (( i=1; i<=number; i++ )); do
    factorial=$((factorial * i))
done

echo "Factorial of $number is $factorial"
