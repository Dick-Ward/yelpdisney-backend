class RestaurantSerializer < ActiveModel::Serializer

  has_many :reviews
end
