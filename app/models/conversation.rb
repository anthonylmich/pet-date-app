class Conversation < ApplicationRecord
  belongs_to :recipient, class_name: "User" #What do I do 
  belongs_to :sender, class_name: "User" #What do with is as well
  has_many :messages
end
