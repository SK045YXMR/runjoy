# テーブル設計

## users テーブル

| Column             | Type     | Options                   |
| ------------------ | -------- | ------------------------- |
| email              | string   | null: false, unique: true |
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