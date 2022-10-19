#!/bin/bash
read -p "enter a symbol:" symbol

if [[ $symbol =~ [0-9] ]] 
then
    echo "$symbol is a digit"
elif [[ $symbol =~ [A-Za-z] ]]
then
    echo "$symbol is a letter"
else
    echo "$symbol is special \
character"
fi