#!/usr/bin/bash

i=0
while [[ $i -lt 10 ]]
do
  echo $i
  i=$(( i + 1 ))
done

echo ''

i=10
while :
do
  echo $i
  i=$(( i - 1 ))

  if [[ i -le 0 ]]
  then
    break
  fi
done
