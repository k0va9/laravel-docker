# Laravel Docker
LaravelをDockerで動かすためのテンプレートリポジトリ

## 構築手順
1. Taskをインストール[公式](https://taskfile.dev/installation/)

2. `.env`ファイルの作成

```sh
$ cp .env.example .env
```

3. taskを実行(Linux以外は変化なし)
```sh
$ task create-env
```
Linux(WSL)ではgid,uidの自動解決が行われないため、ホストのgid,uidを持つ実行ユーザーをコンテナ内で生成する。

4. `.env`のDB情報を更新

5. dockerの起動

```sh
$ task up
```
