class Restaurant < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  has_many :reviews
  has_many :users, through: :reviews

  def average_rating
    if self.reviews.length > 0
      average = (average_quality + average_cleanliness + average_service + average_value) / 4
      return number_with_precision(average, precision: 2).to_f
    else
      0
    end
  end

  def average_quality
    average = Review.where(restaurant_id: self.id).average(:quality)
    return number_with_precision(average, precision: 2).to_f
  end

  def average_cleanliness
    average = Review.where(restaurant_id: self.id).average(:cleanliness)
    return number_with_precision(average, precision: 2).to_f
  end

  def average_service
    average = Review.where(restaurant_id: self.id).average(:service)
    return number_with_precision(average, precision: 2).to_f
  end

  def average_value
    average = Review.where(restaurant_id: self.id).average(:value)
    return number_with_precision(average, precision: 2).to_f
  end



end
