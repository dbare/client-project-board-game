class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :voteable, polymorphic: true

  validates_uniqueness_of :user_id, :scope => [:voteable_type, :voteable_id]
  validates :value, presence: true
  
end
