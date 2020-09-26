#!/usr/bin/bash


NUM=0
if [[ $NUM -eq 0 ]]
then
  echo "1. true"
else
  echo "1. false"
fi

NUM=1
if [[ $NUM -gt 0 ]]
then
  echo "2. true"
else
  echo "2. false"
fi

NUM=0
if [[ $NUM -ge 0 ]]
then
  echo "3. true"
else
  echo "3. false"
fi

NUM=9
if [[ $NUM -lt 10 ]]
then
  echo "4. true"
else
  echo "4. false"
fi

NUM=10
if [[ $NUM -le 10 ]]
then
  echo "5. true"
else
  echo "5. false"
fi
