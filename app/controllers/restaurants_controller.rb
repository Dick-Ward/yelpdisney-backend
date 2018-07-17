class RestaurantsController < ApplicationController

  def index
    restaurants = Restaurant.all.sort{|a,b| a.name.gsub(/\W/, '') <=> b.name.gsub(/\W/, '')}
    restaurant_names = restaurants.map{|restaurant| {id: restaurant.id, name: restaurant.name, park:restaurant.park}}
    render json: restaurant_names
  end

  def show
    restaurant = Restaurant.find(params[:id])
    render json: restaurant
  end

end
