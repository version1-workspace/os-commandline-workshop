
# ShellScript

## スクリプトの実行

```bash
#!/usr/bin/bash

echo 'Hello World'
```


```console
$ chmod 755 hello.sh
$ ./hello.sh
```

or

```console
$ bash ./hello.sh
```

## 変数宣言

```bash
HOGE=HelloWorld!!!!

echo $HOGE
```

※定数はなし


## 四則演算

```bash
i=0
echo $(( i + 1 ))

j=5
echo $(( j - 1 ))

k=2
echo $(( k * 3 ))

l=10
echo $(( l / 2 ))

m=3
echo $(( m % 2 ))
```


## 条件分岐


### 数値の比較

```bash
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
```

### 文字列の比較

```bash
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
```

### 特殊な比較


```bash

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
```


```bash

# AND条件
if [[ -d 'data' && -r 'data' ]]
then
  echo '1. true'
else
  echo '1. false'
fi

# AND条件
if [[ -d 'data' || -n '' ]]
then
  echo '2. true'
else
  echo '2. false'
fi
```


| オプション | 条件 |
| ---- | ---- |
| -x | 実行可能ならtrue |
| -w | 書き込み可能ならtrue |


## ループ


### for文

```bash
for i in {1..10}
do
  echo $i
end
```

### while文

```bash
i=0
while [[ $i -lt 10 ]]
do
  echo $i
  i=$(( i + 1 ))
done
```

```bash
i=0
while :
do
  echo $i
  i=$(( i + 1 ))

  if [[ i -gt 10 ]]
  then
    break
  fi
done
```

### ファイルの読み取り

```bash
i=0
cat "file.txt" | while read LINE
do
  echo $i". "$LINE
  i=$(( $i + 1 ))
done
```

### 標準入力の読み取り

```bash

echo 'continue? ( y / other)'
read ans

if [[ $ans == 'y' ]]
then
  echo 'continue!!'
else
  echo 'quit'
fi
```


### 特殊な変数

| オプション | 条件 |
| ---- | ---- |
| $0 | ファイル名 |
| $1, $2.. $n | 引数 |
| $@ | 全ての引数 |
| $# | 引数の個数 |
| $$ | プロセスID |
| $? | 前のコマンドの実行結果 |


### 関数

```
function hello() {
  echo 'Hello World'
}

hello
```

※クラスはなし

### 配列

https://qiita.com/b4b4r07/items/e56a8e3471fb45df2f59


### 文字列

連結

```bash
LEFT=This
MIDDLE=is
RIGHT=a

SENTENCE=${LEFT}" "${MIDDLE}" "{RIGHT}" pen"

echo $SENTENCE
```

抜き出し

```bash
SENTENCE="This is a pen."

echo ${SENTENCE:5:2}
```

長さ
```bash
SENTENCE="This is a pen."

echo ${#SENTENCE}
```

置換

```bash
SENTENCE="This is a pen."

echo ${SENTENCE/pen/paper}
```
