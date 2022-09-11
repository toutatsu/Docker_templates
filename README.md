# Docker_templates

Dockerテンプレート用レポジトリ

[Docker Documentation | Docker Documentation](https://docs.docker.com/)

[Docker ドキュメント日本語化プロジェクト — Docker-docs-ja 20.10 ドキュメント](https://docs.docker.jp/)

---

# 構成
- Dockerfile
<!-- - [Dockerfile](./Dockerfile) -->
- [compose.yaml](./compose.yaml)


---
# コマンド

[compose](https://docs.docker.jp/engine/reference/commandline/compose.html)

[image]()

[container]()

---


## compose



---

### [docker compose build](https://docs.docker.jp/engine/reference/commandline/compose_build.html)
<details><summary>
サービスの構築もしくは再構築です。
</summary>

`docker compose build [SERVICE...]`
</details>

---

### [docker compose start](https://docs.docker.jp/engine/reference/commandline/compose_start.html)
<details><summary>
サービスを開始します。
</summary>

`docker compose start [SERVICE...]`
</details>

---

### [docker compose up](https://docs.docker.jp/engine/reference/commandline/compose_build.html)
<details><summary>
コンテナを作成し、開始します。
</summary>

(docker compose build + docker compose start)

`docker compose up [SERVICE...]`

`--build`:コンテナの開始前にイメージを構築


`--detach`:デタッチド・モード：バックグラウンドでコンテナを実行

(`--attach`:サービスの出力にアタッチする)
</details>

---

### [docker compose stop](https://docs.docker.jp/engine/reference/commandline/compose_stop.html)
<details><summary>
サービスを停止します。
</summary>

`docker compose stop [SERVICE...]`

</details>

---

## image

## container

<!-- [docker container start]() -->

---

### [docker container exec](https://docs.docker.jp/engine/reference/commandline/container_exec.html)
<details><summary>
実行中のコンテナ内でコマンドを実行します。
</summary>

`docker container exec [OPTIONS] CONTAINER COMMAND [ARG...]`

`--interactive`:アタッチしていなくても、標準入力を開き続ける

`--tty`:疑似TTYを割り当て

</details>

---
### [docker container run](https://docs.docker.jp/engine/reference/commandline/run.html)

<details>
<summary>新しいコンテナでコマンドを実行します。</summary>

`docker container run --interactive --tty --name docker_test_container docker_test_image:test /bin/bash`

</details>

---

---

---

### [build](https://docs.docker.jp/engine/reference/commandline/build.html)

<details>
<summary>Dockerfileからimageをbuild</summary>

`docker build [オプション] パス | URL | -`

</details>


### 2. [create](https://docs.docker.jp/engine/reference/commandline/create.html)

<details>
<summary>新しいコンテナをcreate</summary>

`docker create [OPTIONS] IMAGE [COMMAND] [ARG...]`

</details>


---
---
---

## その他


`docker images`でimage一覧を確認

```
REPOSITORY    TAG       IMAGE ID       CREATED              SIZE
docker_test   latest    ************   About a minute ago   00.0kB
```




`docker container ls --all`でcontainer一覧を確認

```
CONTAINER ID   IMAGE                    COMMAND       CREATED         STATUS                            PORTS     NAMES
0c802c4986f9   docker_test_image:test   "/bin/bash"   3 minutes ago   Exited (137) About a minute ago             docker_test_container
```
