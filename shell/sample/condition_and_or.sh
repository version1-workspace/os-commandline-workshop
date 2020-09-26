#!/usr/bin/bash

# AND条件
if [[ -d 'data' && -r 'data' ]]
then
  echo '1. true'
else
  echo '1. false'
fi

# OR条件
if [[ -d 'data' || -r 'data' ]]
then
  echo '2. true'
else
  echo '2. false'
fi
