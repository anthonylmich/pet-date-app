class Message < ApplicationRecord
  balongs_to :conversation 
  belongs_to :user
  validates :body, presence: true
end
