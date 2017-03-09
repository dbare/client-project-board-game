class Game < ApplicationRecord
  belongs_to :category
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :comments
  has_many :votes, as: :voteable
end
