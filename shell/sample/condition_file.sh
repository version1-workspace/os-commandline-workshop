#!/usr/bin/bash

# ファイルが読み取り可能であればtrue
if [[ -r 'data/fruit.txt' ]]
then
  echo '1. true'
else
  echo '1. false'
fi

# ファイルであればtrue
if [[ -f 'data/fruit.txt' ]]
then
  echo '2. true'
else
  echo '2. false'
fi

# フォルダであればtrue
if [[ -d 'data' ]]
then
  echo '3. true'
else
  echo '3. false'
fi
