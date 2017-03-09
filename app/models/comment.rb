class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :votes, as: :voteable


  def vote_total
    self.votes.reduce(0){|sum, vote| sum + vote.value}
  end
end
