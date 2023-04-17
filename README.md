# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| pre_weight         | float  | null: false               |
| last_date          | date   |                           |
| due_date           | date   |                           |


### Association

- has_many :article

## article テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | -----------                    |
| date      | date       | null: false                    |
| weight    | float      |                                |
| meal      | string     |                                |
| exercise  | string     |                                |
| condition | integer    | null: false                    |
| disease   | string     |                                |
| diary     | string     |                                |
| user      | references | null: false, foreign_key: true |

### Association

- belongs_to :user