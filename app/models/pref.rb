class Pref < ApplicationRecord
  validates :pref_name, presence: true

  has_many :politicians, dependent: :destroy
end
