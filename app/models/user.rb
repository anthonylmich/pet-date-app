class User < ApplicationRecord
  has_many: pets
  has_many: messages
  has_many: conversations
end
