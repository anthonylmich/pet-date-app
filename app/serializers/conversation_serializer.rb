class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :recipient_id, :sender_id
  has_many :messages
end
