
# ファイル操作

> *playgroundディレクトリで作業してください。*

## 1. 三種類の方法でファイルを作ってみる。

```console
touch touch.txt
```

```console
echo '' > echo.txt
```

```console
: > null.txt
```

## 2. ディレクトリを作成する

```
mkdir test
```

## 3. lsコマンドを叩いてみる

```console
ls
```

```console
ls -l
```

```console
ls -lt
```

```console
ls -ltr
```

```console
ls -a
```

```console
ls -1
```

## 7. ファイルを三つつくってchmod で権限を変更してみる。

| 権限 | ファイル名 |
| ------ | --------- |
| rwxrwxrwx | full_right.txt |
| rwxrw-rw- | execution_right.txt |
| rw-r-r- | | edit_right.txt |
| r--r--r-- | read_right.txt |


## 8. ファイルの追記をしてみる。

```console
echo “追記したテキスト” >> append.txt
echo “追記したテキスト” >> append.txt
echo “追記したテキスト” >> append.txt
cat append.txt # ファイルの中身を表示
```

## 9. 7のファイルそれぞれに8の手順で追記を試みる

## 10. _rightで終わるテキストだけ一覧で表示

```console
ls -ltr *_right
```

