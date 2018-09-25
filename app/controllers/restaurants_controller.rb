class RestaurantsController < ApplicationController

  def index
    restaurants = Restaurant.all.sort{|a,b| a.name.gsub(/\W/, '') <=> b.name.gsub(/\W/, '')}
    restaurant_names = restaurants.map{|restaurant| {id: restaurant.id, name: restaurant.name, park:restaurant.park, resort_name: restaurant.resort_name, permalink: restaurant.permalink, cuisine:restaurant.cuisine}}
    render json: restaurant_names
  end

  def show
    restaurant = Restaurant.find_by(permalink: params[:id])
    render json: restaurant
  end

  def search
    park_list = ["magic-kingdom", "epcot", "hollywood-studios", "animal-kingdom", "blizzard-beach", "typhoon-lagoon"]
    if params[:query] != "all"
      restaurants = Restaurant.all.select do |restaurant|
        if restaurant.name.downcase.include?(params[:query].downcase) || restaurant.cuisine.downcase.include?(params[:query].downcase)
          true
        end
      end
    else
      restaurants = Restaurant.all
    end
      restaurants = restaurants.sort{|a,b| a.name.gsub(/\W/, '') <=> b.name.gsub(/\W/, '')}
      render json:restaurants
  end

end
