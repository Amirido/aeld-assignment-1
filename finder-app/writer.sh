#!/bin/bash
#author : Aman

if [ $# -lt 2 ] || [ $# -gt 2 ]
then
    echo "required number of arguments not present"
    exit 1
fi

writefile="$1"
writestr="$2"


mkdir -p "$(dirname "$writefile")"


echo "$writestr" > "$writefile"


if [ $? -ne 0 ]
then
    echo "could not create file"
    exit 1
fi   
