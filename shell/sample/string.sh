#!/usr/bin/bash

# 連結
LEFT=This
MIDDLE=is
RIGHT=a

SENTENCE=${LEFT}" "${MIDDLE}" "${RIGHT}" pen"

echo $SENTENCE

# 抜き出し
SENTENCE="This is a pen."

echo ${SENTENCE:5:2}

# 長さ
SENTENCE="This is a pen."

echo ${#SENTENCE}

# 置換
SENTENCE="This is a pen."

echo ${SENTENCE/pen/paper}
