class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :recipient_id, :sender_id
end
