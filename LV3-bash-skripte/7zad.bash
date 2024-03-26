#!/bin/bash

#Skripta za ispis broja znakova, riječi i linija u datoteci:

if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename=$1

num_characters=$(wc -m < "$filename")
num_words=$(wc -w < "$filename")
num_lines=$(wc -l < "$filename")

echo "Number of characters: $num_characters"
echo "Number of words: $num_words"
echo "Number of lines: $num_lines"
