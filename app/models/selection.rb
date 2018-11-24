class Selection < ApplicationRecord
  has_many :voters, dependent: :destroy
end
