# README

## Dockerでの起動方法

* Dockerを立ち上げる
* Dockerfileがあるディレクトリで、```docker-compose up```を実行する
* 初回のみ、下記の手順を実行
  * 別のターミナルを起動し、```docker-compose run web rake db:create```を実行する
  * 上記を実行後、```docker-compose run web rake db:migrate```を実行する
* ```http://localhost:3000/```にアクセスする
