class ReviewsController < ApplicationController

  def index
    reviews = Review.all
    render json: reviews
  end

  def create
   review = Review.new(review_params)
   if review.save
     render json: review
   end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end

end
