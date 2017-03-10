class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :votes, as: :voteable


  # Return total number of votes by summing up values of vote objects
  def vote_total
    if self.votes.length > 0
      self.votes.reduce(0){|sum, vote| sum + vote.value}
    else
      self.votes.length
    end
  end
end
