class PetSerializer < ActiveModel::Serializer
  attributes :id, :gender, :name, :description, :img_url, :likes, :dislikes, :fixed, :user_id
end
