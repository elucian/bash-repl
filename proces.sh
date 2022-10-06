#!/bin/bash

#start 4 simple co-processes
echo "starting 4 processes ..."
echo "start 1 " && sleep 20 && echo "done 1" &
echo "start 2 " && sleep 5  && echo "done 2" &
echo "start 3 " && sleep 10 && echo "done 3" &
echo "start 4 " && sleep 3  && echo "done 4" &

wait
echo "all processes are ended."
