#!/bin/sh
# write.sh
# Author: Suyash

writefile="$1"
writestr="$2"

if [ "$#" -ne 2 ]; then
	echo "Requires 2 arguments, filepath and the string. Invalid arguments"
	exit 1
fi

dirpath=$(dirname "$writefile")

if [ ! -d "$dirpath" ]
then
        mkdir -p "$dirpath"
fi

echo "$writestr" > "$writefile"

if [ ! -f "$writefile" ]
then
	echo "Error: File could not be created"
	exit 1
fi
