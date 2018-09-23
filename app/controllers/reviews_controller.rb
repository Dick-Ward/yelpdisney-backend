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
    review = Review.find_by(permalink: params[:id])
    render json: review
  end

  def search
    redirect to '/index'
  end

  private

  def review_params
    params.require(:review).permit(:quality, :cleanliness, :service, :value, :content, :restaurant_id)
  end

end
