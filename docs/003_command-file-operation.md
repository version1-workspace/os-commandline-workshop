
# ファイル操作2


## 1. catコマンドでファイルの中をみてみる

## 2. rm でファイルを削除してみる

## 3. mkdirでディレクトリを作成してみる

## 4. rm でディレクトリを削除してみる

## 5. tailコマンドで下3行を表示

```console
tail -3 lorem.txt
```

## 6. headコマンド上3行を表示

```console
head -3 lorem.txt
```


## 7. ファイルをリネームしてみる

```console
mv lorem.txt wagahai.txt
```

## 8. ファイルをコピーしてみる

```console
cp -p wagahai.txt wagahai.copy.txt
```

## 9. wagahai.txt の3行目と6行目を削除して、diffをとる

```
diff wagahai.txt wagahai.copy.txt
```

```
diff -u wagahai.txt wagahai.copy.txt
```