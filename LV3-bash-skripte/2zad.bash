#!/bin/bash

#Skripta za brisanje pojavljivanja stringa u datoteci:

if [ $# -ne 2 ]; then
    echo "Usage: $0 <string> <filename>"
    exit 1
fi

string=$1
filename=$2

sed -i "s/$string//g" "$filename"
cat "$filename"
