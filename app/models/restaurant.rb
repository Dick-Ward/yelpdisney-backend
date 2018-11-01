class Restaurant < ApplicationRecord
  include ActionView::Helpers::NumberHelper

  has_many :reviews
  has_many :users, through: :reviews

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
    if self.reviews.length > 0
      total = self.reviews.reduce(0) do |sum, review|
        sum + review[category]
      end
      average = total / self.reviews.length.to_f
      number_with_precision(average, precision: 2).to_f
    else
      0
    end
  end


end
