class RestaurantSerializer < ActiveModel::Serializer
  attributes :average_rating, :details
  has_many :reviews

  def details(*args)
    object.attributes.symbolize_keys
  end

  def average_rating
    ratings = object.reviews.map{|review| review.rating}
    sum = ratings.reduce(:+)
    (sum / ratings.length.to_f).round(1)
  end

end
