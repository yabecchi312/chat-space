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
