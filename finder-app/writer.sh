#!/bin/bash

writefile=$1
writestr=$2

if [ -z $writefile ] || [ -z $writestr ]
then
    echo "no parameters given"
    exit 1
else
    mkdir -p "${writefile%/*}" && touch "$writefile"
    echo $writestr > $writefile
    exit 0
fi
