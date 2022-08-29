# Docker_templates

Dockerテンプレート用レポジトリ

[Docker Documentation | Docker Documentation](https://docs.docker.com/)

[Docker ドキュメント日本語化プロジェクト — Docker-docs-ja 20.10 ドキュメント](https://docs.docker.jp/)

---

## 構成
- Dockerfile
<!-- - [Dockerfile](./Dockerfile) -->
- [compose.yaml](./compose.yaml)q


---
## コマンド

[compose](https://docs.docker.jp/engine/reference/commandline/compose.html)

[image]()

[container]()

---


## 手順


## 1.imageを作成

---

[docker compose build](https://docs.docker.jp/engine/reference/commandline/compose_build.html)

サービスの構築もしくは再構築です。

`docker compose build [SERVICE...]`

---

[docker compose start](https://docs.docker.jp/engine/reference/commandline/compose_start.html)

サービスを開始します。

`docker compose start [SERVICE...]`

---

[docker compose up](https://docs.docker.jp/engine/reference/commandline/compose_build.html)

コンテナを作成し、開始します。

(docker compose build + docker compose start)

`docker compose up [SERVICE...]`

`--build`:コンテナの開始前にイメージを構築


`--detach`:デタッチド・モード：バックグラウンドでコンテナを実行

(`--attach`:サービスの出力にアタッチする)

---


## 2.imageからcontainerを作成

## 3.containerを実行

[docker container start]()
 

## 4.containerに接続
---

[docker container exec](https://docs.docker.jp/engine/reference/commandline/container_exec.html)

実行中のコンテナ内でコマンドを実行します。

`docker container exec [OPTIONS] CONTAINER COMMAND [ARG...]`

`--interactive`:アタッチしていなくても、標準入力を開き続ける

`--tty`:疑似TTYを割り当て

---



[docker compose stop](https://docs.docker.jp/engine/reference/commandline/compose_stop.html)

サービスを停止します。

`docker compose stop [SERVICE...]`

---
<!-- 

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

### 3. [start](https://docs.docker.jp/engine/reference/commandline/start.html)

<details>
<summary>1つまたは複数のイメージを tar アーカイブに保存</summary>


`docker start [OPTIONS] CONTAINER [CONTAINER...]`

</details>

###  [createとstartを実行:run](https://docs.docker.jp/engine/reference/commandline/run.html)


<details>
<summary>imageからcontainerをcreate</summary>

`docker container run --interactive --tty --name docker_test_container docker_test_image:test /bin/bash`


</details>

### 4.[exec](https://docs.docker.jp/engine/reference/commandline/exec.html)

<details>
<summary>imageからcontainerをcreate</summary>



`docker exec --interactive --tty container_name /bin/bash`


</details>

### 4.[compose](a)

<details>
<summary>imageからcontainerをcreate</summary>



`docker compose build {service name}`


`docker compose up`


</details> -->



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
