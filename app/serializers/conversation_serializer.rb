class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :recipient_id, :sender_id
  belongs_to :partner
  belongs_to :last_message
  has_many :messages
  def partner
    if object.recipient == current_user
      return object.sender     
    else
      return object.recipient
    end
  end
  def last_message
    return object.messages.last
  end
end
