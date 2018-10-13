class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :email
end
