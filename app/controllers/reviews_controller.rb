class ReviewsController < ApplicationController

  def index
    reviews = Review.all
    render json: reviews
  end

  def create

  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end

end
