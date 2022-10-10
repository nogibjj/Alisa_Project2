#!/bin/bash

echo "Enter the year you are interested in"
read file
if [ -e "$file" ]
then
    cat $file | while read line
    do
        echo $line
        if [ $line -gt 1990 ]
        then
            echo "Contemporary"
        else
            echo "Ancient"
        fi
    done
else
    echo "$file does not exist"
fi
