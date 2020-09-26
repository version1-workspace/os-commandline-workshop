
# Docker環境上にubuntu環境を構築

### ubuntuイメージをビルド

生のubuntuイメージだとコマンドが入っていないかったり、ユーザがなかったりするのでそれらの設定をあらかじめ行った
イメージを作成する必要があるので下記コマンドで新しいチュートリアル用イメージを作成。

```console
docker build -t ubuntu_tutorial .
```

> imageにubuntu_tutorialが追加されていることを確認

```console
$ docker images
REPOSITORY              TAG                 IMAGE ID            CREATED             SIZE
ubuntu_tutorial         latest              76df5230276d        10 minutes ago      365MB
```

### コンテナの起動(bashの起動)

起動用のスクリプトでチュートリアル用イメージのbashの起動

```console
./run.sh
```

実行したディレクトリが/home/ubuntuに反映されるので/home/ubuntu配下のファイルは永続化されます。

