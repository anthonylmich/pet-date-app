class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :pets
  has_many :recieved_conversations, class_name: 'Conversation', foreign_key: 'recipient'
  has_many :authored_conversations, class_name: 'Conversation', foreign_key: 'sender'
  has_many :messages, dependent: :destroy
end
