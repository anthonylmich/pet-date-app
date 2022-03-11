class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :pets
  has_many :messages

  def conversations
    Conversation.where("sender_id = ? OR recipient_id = ?", id, id)
  end
end
