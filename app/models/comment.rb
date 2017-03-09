class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :votes, as: :voteable
end
