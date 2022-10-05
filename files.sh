#!/bin/bash
for f in *.sh
do
  echo $f
  printf '_%.0s' {1..30}
  for line in f; do
      echo line
  done
done