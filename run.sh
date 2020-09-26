#!/bin/bash

# カレントディレクトリを/home/ubuntuにマウント
# 2222ポートを22にバインド
# ubuntuユーザとしてbashを起動
docker run -it -v $PWD:/home/ubuntu -p 2222:22 ubuntu_tutorial su - ubuntu
