class VoteAction < ApplicationRecord
  belongs_to :voter
  belongs_to :politician
end
