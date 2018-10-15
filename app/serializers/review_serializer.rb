class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :quality, :cleanliness, :service, :value, :content, :restaurant_id, :restaurant_name, :user_id, :username, :created_at
  belongs_to :user

  def restaurant_name
    object.restaurant.name
  end

  def username
    object.user.username
  end


end
