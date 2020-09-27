
# ファイル操作2

> *playgroundディレクトリで作業してください。*


## 1. catコマンドでファイルの中をみてみる

```console
$ cat lorem.txt
```

## 2. rm でファイルを削除してみる

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
| paste | クリップボードにコピー |
| xargs | 標準入力でわたされたテキストを順番に処理 |
