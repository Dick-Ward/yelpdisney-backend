include ActionView::Helpers::NumberHelper

class RestaurantSerializer < ActiveModel::Serializer
  attributes :average_rating, :average_quality, :average_cleanliness, :average_service, :average_value, :id, :name, :permalink, :category_code, :portion_size, :cost_code, :cuisine, :entree_range, :parking, :bar, :wine_list, :dress, :awards, :breakfast_hours, :lunch_hours, :dinner_hours, :requires_credit_card, :requires_pre_payment, :opened_on, :disney_permalink, :accepts_reservations, :kosher_available, :location_details, :operator_url, :operator_type, :walking_time_proxy_id,  :mobile_ordering, :park, :resort_name
  has_many :reviews, serializer: ReviewSerializer


end
