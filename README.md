# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|integer|null: false, unique: true|

### Association
-  has_many :members
-  has_many :groups, through: :members
-  has_many :messages

## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true|

### Association
-  has_many :members
-  has_many :users, through: :members
-  has_many :messages


## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


## messagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|-------|
|image|string|-------|
|user_id|integer|index: true,null: false, foreign_key: true|
|group_id|integer|index: true,null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
