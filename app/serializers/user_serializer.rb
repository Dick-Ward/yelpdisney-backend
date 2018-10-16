class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :email
  has_many :reviews
end
