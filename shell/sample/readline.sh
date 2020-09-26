#!/usr/bin/bash

echo 'continue? (y/other)'
read ans

if [[ $ans == 'y' ]]
then
  echo 'continue!!'
else
  echo 'quit'
fi
