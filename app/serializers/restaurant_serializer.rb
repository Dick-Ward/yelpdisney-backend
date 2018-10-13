include ActionView::Helpers::NumberHelper

class RestaurantSerializer < ActiveModel::Serializer
  attributes :average_rating, :average_quality, :average_cleanliness, :average_service, :average_value, :id, :name, :permalink, :category_code, :portion_size, :cost_code, :cuisine, :entree_range, :parking, :bar, :wine_list, :dress, :awards, :breakfast_hours, :lunch_hours, :dinner_hours, :requires_credit_card, :requires_pre_payment, :opened_on, :disney_permalink, :accepts_reservations, :kosher_available, :location_details, :operator_url, :operator_type, :walking_time_proxy_id,  :mobile_ordering, :park, :resort_name, :reviews


  def average_rating
    average = (average_quality + average_cleanliness + average_service + average_value) / 4
    number_with_precision(average, precision: 2).to_f
  end

  def average_quality
    get_average(:quality)
  end

  def average_cleanliness
    get_average(:cleanliness)
  end

  def average_service
    get_average(:service)
  end

  def average_value
    get_average(:value)
  end


  def get_average(category)
    if object.reviews.length > 0
      total = object.reviews.reduce(0) do |sum, review|
        sum + review[category]
      end
      average = total / object.reviews.length.to_f
      number_with_precision(average, precision: 2).to_f
    else
      0
    end
  end

  def reviews
    object.reviews.sort{|reviewa, reviewb| reviewb.created_at <=> reviewa.created_at}
  end

end
