class MessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :user_id, :content
  belongs_to :user
  belongs_to :conversation
end
