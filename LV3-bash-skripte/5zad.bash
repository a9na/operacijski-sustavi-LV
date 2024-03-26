#!/bin/bash

#Skripta za ispis datoteka koje započinju određenim znakom:

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <starting_character>"
    exit 1
fi

directory=$1
starting_character=$2

find "$directory" -maxdepth 1 -type f -name "${starting_character}*" -printf "%f\n"
