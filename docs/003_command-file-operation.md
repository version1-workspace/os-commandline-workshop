
# ファイル操作2

> *playgroundディレクトリで作業してください。*


## 1. catコマンドでファイルの中をみてみる

```console
$ cat lorem.txt
```

## 2. rm でファイルを削除してみる

```console
$ rm hoge.txt
```

## 4. rm でディレクトリを削除してみる

```console
$ rm -r [directory]
```

## 5. tailコマンドで下3行を表示

```console
$ tail -3 lorem.txt
```

## 6. headコマンド上3行を表示

```console
$ head -3 lorem.txt
```


## 7. ファイルをリネーム・移動してみる

```console
$ mv lorem.txt wagahai.txt
```

```console
$ mv hoge.txt test/
```

## 8. ファイル・フォルダをコピーしてみる

```console
$ cp -p wagahai.txt wagahai.copy.txt
```

```console
$ cp -pr test test_copy
```


## 9. wagahai.txt の3行目と6行目を削除して、diffをとる

```console
$ diff wagahai.txt wagahai.copy.txt
```

```console
$ diff -u wagahai.txt wagahai.copy.txt
```

## 10. playground/find/srcディレクトリへのシンボリックリンクを作成

```console
$ ln -s playground/find/src src
$ ls -ltr
```

## 11. テキスト操作

| コマンド　| |
| ----- | ----- | 
| cut | テキストの切り出し |
| sort | ソート |
| uniq | ユニークな文字列を呼び出す |
| tr | 簡易的な置換 |
| sed | 正規表現などを使った置換 |
| wc | 文字列のバイトを数える |
| xargs | 標準入力でわたされたテキストを順番に処理 |


### cut

```console
$ echo '1 2 3 4 5' | cut -d' ' -f 2
$ echo '1,2,3,4,5' | cut -d',' -f 4
$ echo 'library' | cut -b 3-4
```

### sort

```console
$ cat << EOF | sort
1
3
10
22
5
44
6
EOF
```

```console
$ cat << EOF | sort -n
1
3
10
22
5
44
6
EOF
```

### uniq

```console
$ cat << EOF | sort -n | uniq
1
3
1
5
5
2
EOF
```

### tr

```console
$ echo 'すもももももももものうち' | tr 'ももも' 'ももも、'
```

```console
$ echo '1@2@3@4@5@6' | tr '@' '\n'
```
### sed

```console
$ echo 'すもももももももものうち' | sed -e 's/ももも/ももも、/g'
```

### wc

```console
$ echo 'library' | wc -c
```

```console
$ cat lorem.txt | wc -l
```

### xargs

```console
$ find src -name  '*B*' -a -type f  | xargs rm
```

https://news.mynavi.jp/article/20180816-678553/
