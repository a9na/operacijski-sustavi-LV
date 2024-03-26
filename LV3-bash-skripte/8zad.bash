#!/bin/bash

#Skripta za preimenovanje datoteka u direktoriju:

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory> <number>"
    exit 1
fi

directory=$1
number=$2

cd "$directory" || exit

for file in *"$number"*; do
    newname=$(echo "$file" | sed "s/$number/$(($number + 1))/")
    mv "$file" "$newname"
done

ls
