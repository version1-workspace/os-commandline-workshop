
# Docker環境上にubuntu環境を構築

### ubuntuイメージをビルド

```console
docker build -t ubuntu-tutorial .
```

> imageにubuntu-tutorialが追加されていることを確認

```console
$ docker images
REPOSITORY              TAG                 IMAGE ID            CREATED             SIZE
ubuntu                  latest              9140108b62dc        7 hours ago         72.9MB
```

### コンテナの起動(bashの起動)

```console
run.sh
```

実行したディレクトリが/home/ubuntuに反映されるので/home/ubuntu配下のファイルは永続化されます。

