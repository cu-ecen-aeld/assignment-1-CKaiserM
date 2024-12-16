#!/bin/bash
filesdir=$1
searchstr=$2

if [ -z $filesdir ] || [ -z $searchstr ]
then
    echo "empty string"
    exit 1
elif [[ ! -d $filesdir ]]
then
    echo "dir not found"
    exit 1
else
    X=$(find $filesdir -type f | wc -l)
    Y=$(grep -r $searchstr $filesdir | wc -l)
    echo "The number of files are $X and the number of matching lines are $Y"
    exit 0
fi
