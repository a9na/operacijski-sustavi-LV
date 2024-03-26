#!/bin/bash

#Skripta za provjeru palindroma:

if [ $# -ne 1 ]; then
    echo "Usage: $0 <string>"
    exit 1
fi

string=$1
reverse_string=$(echo "$string" | rev)

if [ "$string" == "$reverse_string" ]; then
    echo "$string is a palindrome"
else
    echo "$string is not a palindrome"
fi
