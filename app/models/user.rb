class User < ApplicationRecord
  has_secure_password
  has_many :voters, dependent: :destroy
  has_many :politicians, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
