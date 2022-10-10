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
        elif [ $line -gt 1850 -a $line -lt 1900 ]
        then
            echo "Realism"
        elif [ $line -gt 1900 -a $line -lt 1935 ]
        then
            echo "Fauvism"
        elif [ $line -gt 1935 -a $line -lt 1950 ]
        then
            echo "Expressionism"
        elif [ $line -gt 1950 -a $line -lt 2022 ]
        then
            echo "Contemporary Art"
        else
            echo "Not included in this timeline"
        fi
    done
else
    echo "$year not included in this timeline"
fi
