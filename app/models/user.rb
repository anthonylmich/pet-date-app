class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :pets
  has_many :messages
  has_many :conversations
end
