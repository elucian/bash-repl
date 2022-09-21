#!/bin/bash

# test if there are arguments
if [ $# = 0 ]; then
   echo "use some arguments"
   exit 0
else
   echo "detect $# arguments"
fi

# list the arguments
for i in $@
do
    echo "$i"
done