class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :pets, dependent: :destroy
  has_many :messages, dependent: :destroy

  def conversations
    Conversation.where("sender_id = ? OR recipient_id = ?", id, id)
  end
end
