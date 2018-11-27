class VoteAction < ApplicationRecord
  belongs_to :voter
  belongs_to :politician

  validates :voter_id, :uniqueness => {:scope => :selection_id}
end
