class Voter < ApplicationRecord
  belongs_to :user
  belongs_to :selection
  has_many :vote_actions, dependent: :destroy
  has_many :vote_politicians, through: :vote_actions, source: :politician

  validates :user_id, :uniqueness => {:scope => :selection_id}

end
