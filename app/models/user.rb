class User < ApplicationRecord
  has_many :voters, dependent: :destroy
  has_many :politicians, dependent: :destroy
end
