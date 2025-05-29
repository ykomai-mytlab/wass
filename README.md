# 1. wass のビルド方法
  cd repos/wass
  sudo ./Docker/wass_docker_build.sh

  Docker Desktopに、ykomai/wass:latest と ykomai/wass:runall のイメージができる。

# 2. gridding のビルド方法
  cd docker_gridding
  sudo docker build -t ykomai/gridding:latest .

  Docker Desktopに、ykomai/gridding:latest のイメージができる。

# 3. ビルドしないで、DockerHub からイメージを取得する方法
  sudo docker pull ykomai/wass:latest
  sudo docker pull ykomai/gridding:latest

  １と同じく、Docker Desktopに、ykomai/wass:latest と ykomai/gridding:runall のイメージができる。
  
# 4. make による起動・停止・確認方法

  今読んでいるこのファイルがあるディレクトリで実行する。

  ## 4-1. wassの起動
    make start

  ## 4-2. wassの停止
    make stop

  ## 4-3. gridding コンテナの起動とログイン
    make start-grid

    '＃' .... というプロンプトが表示されれればOK

    終了するときは、exit [RETURN] でぬける。

  ## 4-4. gridding コンテナの停止
    make stop-grid

# 5. 確認
 ## 5-1. コンテナのリストを表示
   make cnt

 ## 5-2. イメージのリストを表示
   make img

 
