# アプリケーション名

# RUN JOY
[![Image from Gyazo](https://i.gyazo.com/0ecec5097a45d9ca25f9cff6f719d233.png)](https://gyazo.com/0ecec5097a45d9ca25f9cff6f719d233)
# アプリケーション概要

1. このアプリケーションは、全てのランニングやジョギングをしている人等に向けて作成しました。

2. 目的としては、<br>-ランニング、ジョギングに関するあらゆる楽しさや共有したいこと（走った時に見た風景や自分が使用しているシューズなどのギアの紹介、走った後のご褒美ご飯, etc .）をランナー・ジョガーの中で共有し合うこと。<br>-健康管理やダイエットなどランニング、ジョギングに取り組み始めた初心者の方がモチベーションを保てるようにすること。<br>-これらの目的を解消しつつ、ランニング・ジョギングの輪を広げること。<br>以上を目的としています。

# URL
現在作成中です。

# テスト用アカウント
- テストユーザー1<br>ログインアドレス：test@test30.com<br>ログインパスワード：2qazbnm3
- テストユーザー2<br>ログインアドレス：test@test31.com<br>ログインパスワード：4tgbzxc9

# 利用方法
- テストアカウントでログイン→トップページから新規投稿ボタン押下→投稿情報入力→投稿完了
- テストアカウントでログイン→投稿された画像又はユーザー名を押下→投稿詳細ページに遷移→同ページ下のコメントフォームにコメント入力→コメント投稿完了

# 目指した課題解決
1. このアプリケーションを通じて、目指した課題解決は、全てのランナー・ジョガーの間で、ランニングの楽しさや悩みを共有し合い、<br>ランニング・ジョギングの輪を広げていくことです。
2. ランニング・ジョギングを趣味や健康管理等様々な理由で行なっている方は多いと思いますが、以下のような気持ちがあると思います。<br>
    - 自分の周囲にランニング・ジョギングを行なっている人がいない。
    - そのため、ランニング・ジョギングの楽しさや悩みを共有できず、寂しい気持ちがある。
    - ランニング・ジョギングを長年続けている中〜上級者は、自身でモチベーション管理をすることができるが、始めたばかりの初心者はモチベーション管理ができず、挫折してしまい辞めてしまいがち。
3. 以上のような問題を解決するためには、やはり、自身が思っている気持ち＝情報を共有しあうことが必要であることから、<br>ランニング・ジョギングを周囲でしている人はいないけれど、気持ちを共有することでこの課題を解決できると考えました。

# 洗い出した要件
- ユーザー管理機能
- 投稿機能
- 投稿詳細機能
- 投稿編集機能（更新・削除を含む）
- コメント投稿機能
- ユーザー詳細・編集機能

# 実装した機能の紹介
1. ユーザー管理機能<br>GemのDeviseで実装しております。ユーザーの新規登録とログインができます。<br>ユーザーログイン画面<br>[![Image from Gyazo](https://i.gyazo.com/75ab58834f802d04831fd1574bbe3519.gif)](https://gyazo.com/75ab58834f802d04831fd1574bbe3519)<br>ユーザー新規登録画面<br>[![Image from Gyazo](https://i.gyazo.com/0991dc5e5a794ecad9b52eb1152d0c70.gif)](https://gyazo.com/0991dc5e5a794ecad9b52eb1152d0c70)<br>
2. 投稿機能<br>画像とコメントを投稿できます。<br>[![Image from Gyazo](https://i.gyazo.com/f6d36658c1424943d21a4c7030866a04.gif)](https://gyazo.com/f6d36658c1424943d21a4c7030866a04)<br>
3. 投稿詳細機能<br>投稿の詳細機能です。トップページの画像をクリックすると遷移します。<br>[![Image from Gyazo](https://i.gyazo.com/67a7025d68f15106446915e2303bf1e3.gif)](https://gyazo.com/67a7025d68f15106446915e2303bf1e3)<br>
4. 投稿編集機能（更新・削除を含む）<br>投稿編集機能です。詳細ページの編集・削除ボタンから実行できます。<br>投稿編集画面<br>[![Image from Gyazo](https://i.gyazo.com/fef9f5c2a84934e78204d3c36df84c2e.gif)](https://gyazo.com/fef9f5c2a84934e78204d3c36df84c2e)<br>投稿削除<br><br>
5. コメント投稿機能<br>コメント投稿機能です。投稿詳細ページの投稿フォームからコメントを投稿できます。<br>コメントの投稿<br>[![Image from Gyazo](https://i.gyazo.com/c8acfe424b971ca11e799ec451702084.gif)](https://gyazo.com/c8acfe424b971ca11e799ec451702084)<br>
6. ユーザー詳細・編集機能<br>ユーザー詳細・編集機能です。ユーザー詳細ページへは、ログイン後のトップページの自身のニックネームをクリックする、投稿したユーザーのニックネームをクリックする、投稿詳細ページのユーザーのニックネームをクリックするとユーザー詳細ページに遷移できます。<br>また、ユーザー情報の編集ページには、ログイン後、トップページ右上のユーザー編集ボタンから遷移できます。<br>ユーザー詳細画面<br>[![Image from Gyazo](https://i.gyazo.com/0c95b690e2c87a664b692cb9a47a50ec.gif)](https://gyazo.com/0c95b690e2c87a664b692cb9a47a50ec)<br>ユーザー情報編集画面<br>[![Image from Gyazo](https://i.gyazo.com/0196cb7d5dd9be53043b09792d2dea1d.gif)](https://gyazo.com/0196cb7d5dd9be53043b09792d2dea1d)<br>

# 実装予定の機能
- 投稿に対する「いいね」機能
- 動画の投稿機能

# テーブル設計

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| email              | string   | null: false               |
| password           | string   | null: false               |
| nickname           | string   | null: false               |
| profile            | text     | null: false               |

### Association

- has_many :runs
- has_many :comments
- has_many :likes
- has_many :like_runs, through: :likes, source: :run

## runs テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| title              | string     | null: false                    |
| content            | text       | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :likes
- has_many :like_users, through: :likes, source: :user

## comments テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| text               | text       | null: false                    |
| user               | references | null: false, foreign_key: true |
| run                | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :run

## likes テーブル

| Column             | Type       | Options                                      |
| ------------------ | ---------- | -------------------------------------------- |
| user               | references | null: false, foreign_key: true, unique: true |
| run                | references | null: false, foreign_key: true, unique: true |

- belongs_to :user
- belongs_to :run

# ローカルでの動作方法
1. 本アプリケーションを使用したいディレクトリに移動する。
2. 1のディレクトリで、git clone https://github.com/SK045YXMR/runjoy.git コマンドを実行する。
3. cd runjoy
4. bundle install
5. yarn install
6. rails db:create
7. rails db:migrate
- 使用技術は以下のとおりです。
    * Ruby 2.6.5
    * Ruby on Rails 6.0.0
    * MySQL Ver 5.6
    * Devise
    * Mini_Magick
    * Image_Processing ~> 1.2
    * RSpec
