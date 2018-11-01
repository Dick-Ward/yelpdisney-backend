class RestaurantsController < ApplicationController
      skip_before_action :authorized

  def index
    restaurants = Restaurant.all
    render json: sort_and_strip(restaurants)
  end

  def show
    restaurant = Restaurant.find_by(permalink: params[:id])
    render json: restaurant
  end

  def search
    park_list = ["magic-kingdom", "epcot", "hollywood-studios", "animal-kingdom", "blizzard-beach", "typhoon-lagoon"]
    if params[:query] != "all"
      restaurants = Restaurant.where("UPPER(name) like UPPER(:search) OR UPPER(cuisine) like UPPER(:search)", search: "%#{params[:query].downcase}%")
    else
      restaurants = Restaurant.all
    end
      render json: sort_and_strip(restaurants)
  end

  private

  def sort_and_strip(restaurants)
    restaurant_list = restaurants.sort{|a,b| a.name.gsub(/\W/, '') <=> b.name.gsub(/\W/, '')}
    restaurant_names = restaurant_list.map{|restaurant| {id: restaurant.id, name: restaurant.name, park:restaurant.park, resort_name: restaurant.resort_name, permalink: restaurant.permalink, cuisine:restaurant.cuisine, category_code: restaurant.category_code, average_rating: restaurant.average_rating }}
  end



end
