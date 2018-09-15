class RestaurantsController < ApplicationController

  def index
    restaurants = Restaurant.all.sort{|a,b| a.name.gsub(/\W/, '') <=> b.name.gsub(/\W/, '')}
    restaurant_names = restaurants.map{|restaurant| {id: restaurant.id, name: restaurant.name, park:restaurant.park, resort_name: restaurant.resort_name, permalink: restaurant.permalink}}
    render json: restaurant_names
  end

  def show
    restaurant = Restaurant.find_by(permalink: params[:id])
    render json: restaurant
  end

end
