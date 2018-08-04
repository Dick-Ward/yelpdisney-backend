class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :quality, :cleanliness, :service, :value, :content, :restaurant_id, :restaurant_name

  def restaurant_name
    object.restaurant.name
  end

end
