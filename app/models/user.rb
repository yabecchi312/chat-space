class User < ApplicationRecord
  has_many :groups, through: :members
  has_many :members
  has_many :messages
end
