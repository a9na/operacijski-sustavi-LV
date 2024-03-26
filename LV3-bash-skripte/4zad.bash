#Skripta za provjeru prostog broja:

#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <number>"
    exit 1
fi

number=$1
is_prime=true

if [ $number -eq 1 ]; then
    is_prime=false
fi

for (( i=2; i*i<=number; i++ )); do
    if [ $((number % i)) -eq 0 ]; then
        is_prime=false
        break
    fi
done

if $is_prime; then
    echo "$number is prime"
else
    echo "$number is not prime"
fi
