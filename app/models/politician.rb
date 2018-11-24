class Politician < ApplicationRecord
  belongs_to :user
  has_many :vote_actions, dependent: :destroy
  has_many :vote_voters, through: :vote_actions, source: :vote
end
