class Restaurant < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  has_many :reviews
  has_many :users, through: :reviews

  def average_rating
    if self.reviews.length > 0
      average = Review.where(restaurant_id: self.id).pluck("avg(quality) + avg(cleanliness) + avg(service) + avg(value)")[0].to_f/4
      number_with_precision(average, precision: 2).to_f
    else
      0
    end
  end



end
