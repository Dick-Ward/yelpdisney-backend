class ReviewsController < ApplicationController

  def index
    reviews = Review.all
    render json: reviews
  end

  def create
   review = Review.new(review_params)

   restaurant = Restaurant.find(params[:restaurant_id])
   if review.save
     render json: restaurant
   end
  end

  def show
    # this gun works?
    review = Review.find_by(id: params[:id])
    render json: review
  end

  private

  def review_params
    params.require(:review).permit(:quality, :cleanliness, :service, :value, :content, :restaurant_id)
  end

end
