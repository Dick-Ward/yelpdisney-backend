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

  def search
    if params[:park] != "all"
      restaurants = Restaurant.all.select{|restaurant| restaurant.park == params[:park]}
    else
      restaurants = Restaurant.all
    end
    if params[:query] != "all"
      restaurants = restaurants.select{|restaurant| restaurant.name.downcase.include?(params[:query].downcase)}
    else
      restaurants = restaurants
    end
      restaurants = restaurants.sort{|a,b| a.name.gsub(/\W/, '') <=> b.name.gsub(/\W/, '')}
      render json:restaurants
  end

end
