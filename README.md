# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| pre_weight         | float  |                           |
| last_date          | date   |                           |
| due_date           | date   |                           |


### Association

- has_many :article

## articles テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | -----------                    |
| datetime      | date       | null: false                    |
| weight        | float      |                                |
| target_weight | float      |                                |
| meal          | string     |                                |
| exercise      | string     |                                |
| condition     | integer    |                                |
| disease       | string     |                                |
| diary         | string     |                                |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user