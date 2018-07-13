## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, add_index|
|email|integer|null: false, unique: true, add_index|

### Association
-  has_many :groups, through: :group_users
-  has_many :group_users


## groupsテーブル

|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false, add_index|

### Association
-  has_many :users, through: :group_users
-  has_many :group_users


## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


## membersテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|group_id|text|null: false|
|user_id|integer|index: true,null: false, foreign_key: true|
|group_id|integer|index: true,null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
