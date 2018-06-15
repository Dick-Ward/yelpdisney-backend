require 'rest-client'

park_list = ["magic-kingdom", "epcot", "hollywood-studios", "animal-kingdom", "blizzard-beach", "typhoon-lagoon"]

def fix_name(park_name)
  case park_name
  when "magic-kingdom"
    "Magic Kingdom"
  when "epcot"
    "Epcot"
  when "hollywood-studios"
    "Hollywood Studios"
  when "animal-kingdom"
    "Animal Kingdom"
  when "blizzard-beach"
    "Blizzard Beach"
  when "typhoon-lagoon"
    "Typhoon Lagoon"
  else
    "nil"
  end
end

def create_restaurant(rest_list, park)
  park_name = fix_name(park)
  rest_list.each do |restaurant|
    resResponse = RestClient.get("https://touringplans.com/#{park}/dining/#{restaurant["permalink"]}.json")
    parsed = JSON.parse(resResponse)
    Restaurant.create(name: parsed["name"], permalink: parsed["permalink"], category_code: parsed["category_code"], portion_size: parsed["portion_size"], cost_code: parsed["cost_code"], cuisine: parsed["cuisine"], entree_range: parsed["entree_range"], parking: parsed["parking"], bar: parsed["bar"], wine_list: parsed["wine_list"], dress: parsed["dress"], awards: parsed["awards"], breakfast_hours: parsed["breakfast_hours"], lunch_hours: parsed["lunch_hours"], dinner_hours: parsed["dinner_hours"], house_specialties: parsed["house_specialties"], requires_credit_card: parsed["requires_credit_card"], requires_pre_payment: parsed["requires_pre_payment"], opened_on: parsed["opened_on"], disney_permalink: parsed["disney_permalink"], code: parsed["code"], short_name: parsed["short_name"], accepts_reservations: parsed["accepts_reservations"], kosher_available: parsed["kosher_available"], location_details: parsed["location_details"], operator_id: parsed["operator_id"], operator_url: parsed["operator_url"], operator_type: parsed["operator_type"], walking_time_proxy_id: parsed["walking_time_proxy_id"], sort_name: parsed["sort_name"], mobile_ordering: parsed["mobile_ordering"], park: park_name)
  end
end

def create_resort_restaurant(rest_list, resort)
  rest_list.each do |restaurant|
    resResponse = RestClient.get("https://touringplans.com/walt-disney-world/dining/#{restaurant["permalink"]}.json")
    parsed = JSON.parse(resResponse)
    Restaurant.create(name: parsed["name"], permalink: parsed["permalink"], category_code: parsed["category_code"], portion_size: parsed["portion_size"], cost_code: parsed["cost_code"], cuisine: parsed["cuisine"], entree_range: parsed["entree_range"], parking: parsed["parking"], bar: parsed["bar"], wine_list: parsed["wine_list"], dress: parsed["dress"], awards: parsed["awards"], breakfast_hours: parsed["breakfast_hours"], lunch_hours: parsed["lunch_hours"], dinner_hours: parsed["dinner_hours"], house_specialties: parsed["house_specialties"], requires_credit_card: parsed["requires_credit_card"], requires_pre_payment: parsed["requires_pre_payment"], opened_on: parsed["opened_on"], disney_permalink: parsed["disney_permalink"], code: parsed["code"], short_name: parsed["short_name"], accepts_reservations: parsed["accepts_reservations"], kosher_available: parsed["kosher_available"], location_details: parsed["location_details"], operator_id: parsed["operator_id"], operator_url: parsed["operator_url"], operator_type: parsed["operator_type"], walking_time_proxy_id: parsed["walking_time_proxy_id"], sort_name: parsed["sort_name"], mobile_ordering: parsed["mobile_ordering"], park: "Resort Dining", resort_name: resort["name"])
  end
end


def get_dining(park_list)
  park_list.each do |park|
    response = RestClient.get("https://touringplans.com/#{park}/dining.json")
    rest_list = JSON.parse(response).flatten
    create_restaurant(rest_list, park)
  end
end

def get_resort_dining
  response = RestClient.get("https://touringplans.com/walt-disney-world/resort-dining.json")
  resort_list = JSON.parse(response)
  dining = resort_list.each do | resort |
    if resort["dinings"] != []
       create_resort_restaurant(resort["dinings"], resort)
    end
  end
end



# get_dining(park_list)
# get_resort_dining




Review.create(rating: 5, content: "Awesome", restaurant_id: 192)
Review.create(rating: 4, content: "Sporktastic", restaurant_id: 192)
Review.create(rating: 3, content: "Middle of the road, yo", restaurant_id: 192)
Review.create(rating: 2, content: "It ain't great", restaurant_id: 174)
Review.create(rating: 1, content: "Garrrrbidge", restaurant_id: 174)
Review.create(rating: 4, content: "Spectorqueular", restaurant_id: 174)
Review.create(rating: 2, content: "S'ok", restaurant_id: 61)
Review.create(rating: 5, content: "Slamazing", restaurant_id: 61)
