class RestaurantsController < ApplicationController

  def index
    restaurants = Restaurant.all.sort{|a,b| a.name <=> b.name}
    render json: restaurants.first(20)
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant
  end

end
