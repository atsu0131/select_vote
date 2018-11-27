class Zone < ApplicationRecord
  belongs_to :pref
  has_many :politicians, dependent: :destroy
  has_many :users, dependent: :destroy
end
