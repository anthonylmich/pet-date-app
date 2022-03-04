class Conversation < ApplicationRecord
  belongs_to :recipiant, class_name: "User", #What do I do 
  belongs_to :sender, class_name: "User", #What do with is as well
  has_manys :messages
end
