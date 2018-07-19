class RestaurantSerializer < ActiveModel::Serializer
  has_many :reviews
  attributes :average_rating, :name, :permalink, :category_code, :portion_size, :cost_code, :cuisine, :entree_range, :parking, :bar, :wine_list, :dress, :awards, :breakfast_hours, :lunch_hours, :dinner_hours, :house_specialties, :requires_credit_card, :requires_pre_payment, :opened_on, :disney_permalink, :code, :short_name, :accepts_reservations, :kosher_available, :location_details, :operator_id, :operator_url, :operator_type, :walking_time_proxy_id, :sort_name, :mobile_ordering, :park, :resort_name

  def average_rating
    if object.reviews.length > 0
      ratings = object.reviews.map{|review| review.rating}
      sum = ratings.reduce(:+)
      (sum / ratings.length.to_f).round(1)
    else
      0
    end
  end

end
