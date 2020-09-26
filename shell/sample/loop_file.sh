#!/usr/bin/bash

i=0
cat "data/fruit.txt" | while read LINE
do
  echo $i". "$LINE
  i=$(( $i + 1 ))
done
