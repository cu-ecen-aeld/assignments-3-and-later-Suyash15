#!/bin/sh
# finder.sh script
# Author: Suyash

filesdir="$1"
searchstr="$2"

if [ "$#" -ne 2 ];
then
	echo "expected arguments not provided"
	exit 1
fi

if [ ! -d "$filesdir" ];
then
	echo "Entered file does not represents a directory in the filesystem"
	exit 1
fi
  
X=$(find ${filesdir} -type f | wc -l)
Y=$(grep -r ${searchstr} ${filesdir} | wc -l)

echo "The number of files are ${X} and the number of matching lines are ${Y}"
exit 0
