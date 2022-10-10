#!/bin/bash

echo "Let's know about the history of art!"

echo "Enter the year you are interested in."
read year
if [ -e "$year" ]
then
    cat $year | while read line
    do
        echo $line
        if [ $line -gt 1400 -a $line -lt 1600 ]
        then
            echo "Renaissance"
        elif [ $line -gt 1600 -a $line -lt 1750 ]
        then
            echo "Baroque"
        elif [ $line -gt 1750 -a $line -lt 1850 ]
        then
            echo "Neoclassicism"
        else
            echo "Ancient"
        fi
    done
else
    echo "$year does not exist"
fi
