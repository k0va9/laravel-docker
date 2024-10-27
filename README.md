# Laravel Docker
LaravelをDockerで動かすためのテンプレートリポジトリ

## 構築手順
1. `.env`ファイルの作成

```sh
$ cp .env.example .env
```

2. `.env`のDB情報を更新

3. dockerの起動

```sh
$ make up
```


### for linux(WSL)

Linux(WSL)ではgid,uidの自動解決が行われない。(Mac,Windowsはこの限りではない。)

そのため、コンテナ内で生成したファイルは所有者の不一致により変更ができない。

対応策として、ホストのgid,uidを持つ実行ユーザーをコンテナ内で生成する。

### 回避方法
Linux(WSL)で構築する際は以下を実行する
```sh
$ make linux-env
```
