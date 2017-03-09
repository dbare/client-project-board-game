class User < ApplicationRecord
  has_many :votes
  has_many :games, through: :subscriptions
  has_many :comments
  has_many :subscriptions
  has_many :follows
  has_many :followers, through: :follows, foreign_key: :followed_user
  has_secure_password
end
