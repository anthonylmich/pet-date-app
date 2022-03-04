class Conversation < ApplicationRecord
  belongs_to: recipiant #What do I do 
  belongs_to: sender #What do with is as well
  has_manys: messages
end
