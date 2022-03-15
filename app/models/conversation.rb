class Conversation < ApplicationRecord
  belongs_to :recipient, class_name: "User"
  belongs_to :sender, class_name: "User"
  has_many :messages 

  validates :sender_id, uniqueness: {scope: :recipient_id}
end
# -> { order(created_at: :asc) } dependent: :destroy 
# validates :author, uniqueness: {scope: :receiver}