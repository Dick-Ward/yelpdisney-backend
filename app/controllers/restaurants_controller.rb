class RestaurantsController < ApplicationController
      skip_before_action :authorized

  def index
    restaurants =  Restaurant.select("id", "name", "park", "resort_name", "permalink", "cuisine", "category_code")
    render json: sort_and_strip(restaurants)
  end

  def show
    restaurant = Restaurant.find_by(permalink: params[:id])
    if stale?(restaurant)
      render json: restaurant
    end
  end

  def search
    if params[:query] != "all"
      restaurants = Restaurant.select("id", "name", "park", "resort_name", "permalink", "cuisine", "category_code").where("UPPER(name) like UPPER(:search) OR UPPER(cuisine) like UPPER(:search)", search: "%#{params[:query].downcase}%")
    else
      restaurants = Restaurant.select("id", "name", "park", "resort_name", "permalink", "cuisine", "category_code")
    end
      render json: sort_and_strip(restaurants)
  end

  private

  def sort_and_strip(restaurants)
    restaurant_list = restaurants.sort{|a,b| a.name.gsub(/\W/, '') <=> b.name.gsub(/\W/, '')}
    restaurant_names = restaurant_list.map{|restaurant| {id: restaurant.id, name: restaurant.name, park:restaurant.park, resort_name: restaurant.resort_name, permalink: restaurant.permalink, cuisine:restaurant.cuisine, category_code: restaurant.category_code, average_rating: restaurant.average_rating }}
  end



end
