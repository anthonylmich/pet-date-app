class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :location_city, :phone_number
end
