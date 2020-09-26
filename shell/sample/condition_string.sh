#!/usr/bin/bash

# 常にtrue
if [[ 1 ]]
then
  echo '1. true'
else
  echo '1. false'
fi

# 文字列が0より長ければtrue
if [[ -n 'hoge' ]]
then
  echo '2. true'
else
  echo '2. false'
fi

# 文字列が0であればtrue
if [[ -z 'hoge' ]]
then
  echo '3. true'
else
  echo '3. false'
fi

if [[ -z '' ]]
then
  echo '4. true'
else
  echo '4. false'
fi
