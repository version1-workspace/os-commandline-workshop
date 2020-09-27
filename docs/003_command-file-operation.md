
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
