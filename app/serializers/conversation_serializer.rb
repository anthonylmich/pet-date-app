class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :recipient_id, :sender_id
  has_many :messages
  belongs_to :partner
  def partner
    if object.recipient == current_user
      return object.sender     
    else
      return object.recipient
    end
  end
end
