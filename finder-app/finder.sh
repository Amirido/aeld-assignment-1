#!/bin/bash
# author : Aman Kumar

if [ $# -lt 2 ] || [ $# -gt 2 ]
then
	echo "Only 2 arguments are valid"
	exit 1
fi

filesdir="$1"
searchstr="$2"

if [ -d "$filesdir" ]
then
	echo "the given directory is present on the filesystem,  "
        nfiles=$(find "$filesdir" -type f | wc -l)
	mline=$(grep -r "$searchstr" "$filesdir" | wc -l)
        echo "The number of files are $nfiles and the number of matching lines are $mline"

else
	echo "the given directory is not present on the filesystem"
	exit 1
fi



