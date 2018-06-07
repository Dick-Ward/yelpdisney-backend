require 'rest-client'

mkDining =
[
{
"name": "Casey's Corner",
"permalink": "caseys-corner"
},
{
"name": "Columbia Harbour House",
"permalink": "columbia-harbour-house"
},
{
"name": "Cosmic Ray's Starlight Cafe",
"permalink": "cosmic-rays-starlight-cafe"
},
{
"name": "The Friar's Nook",
"permalink": "friars-nook"
},
{
"name": "Golden Oak Outpost",
"permalink": "golden-oak-outpost"
},
{
"name": "The Lunching Pad",
"permalink": "lunching-pad"
},
{
"name": "Main Street Bakery",
"permalink": "main-street-bakery"
},
{
"name": "Pecos Bill Tall Tale Inn and Cafe",
"permalink": "pecos-bill-tall-tale-inn-and-cafe"
},
{
"name": "Pinocchio Village Haus",
"permalink": "pinocchio-village-haus"
},
{
"name": "Tomorrowland Terrace Restaurant",
"permalink": "tomorrowland-terrace"
},
{
"name": "Tortuga Tavern",
"permalink": "tortuga-tavern"
},
{
"name": "Be Our Guest Restaurant",
"permalink": "be-our-guest"
},
{
"name": "Cinderella's Royal Table",
"permalink": "cinderellas-royal-table"
},
{
"name": "The Crystal Palace",
"permalink": "crystal-palace"
},
{
"name": "The Diamond Horseshoe",
"permalink": "diamond-horseshoe"
},
{
"name": "Jungle Navigation Co. Ltd. Skipper Canteen",
"permalink": "skipper-canteen"
},
{
"name": "Liberty Tree Tavern",
"permalink": "liberty-tree-tavern"
},
{
"name": "The Plaza Restaurant",
"permalink": "plaza-restaurant"
},
{
"name": "Tony's Town Square Restaurant",
"permalink": "tonys-town-square-restaurant"
}
]


mkDining.each do |restaurant|
  response = RestClient.get("https://touringplans.com/magic-kingdom/dining/#{restaurant[:permalink]}.json")
  parsed = JSON.parse(response)
  Restaurant.create(name: parsed["name"], permalink: parsed["permalink"], category_code: parsed["category_code"], portion_size: parsed["portion_size"], cost_code: parsed["cost_code"], cuisine: parsed["cuisine"], entree_range: parsed["entree_range"], parking: parsed["parking"], bar: parsed["bar"], wine_list: parsed["wine_list"], dress: parsed["dress"], awards: parsed["awards"], breakfast_hours: parsed["breakfast_hours"], lunch_hours: parsed["lunch_hours"], dinner_hours: parsed["dinner_hours"], house_specialties: parsed["house_specialties"], adult_breakfast_menu_url: parsed["adult_breakfast_menu_url"], adult_lunch_menu_url: parsed["adult_lunch_menu_url"], adult_dinner_menu_url: parsed["adult_dinner_menu_url"], child_breakfast_menu_url: parsed["child_breakfast_menu_url"], child_lunch_menu_url: parsed["child_lunch_menu_url"], child_dinner_menu_url: parsed["child_dinner_menu_url"], requires_credit_card: parsed["requires_credit_card"], requires_pre_payment: parsed["requires_pre_payment"], opened_on: parsed["opened_on"], disney_permalink: parsed["disney_permalink"], code: parsed["code"], short_name: parsed["short_name"], accepts_reservations: parsed["accepts_reservations"], kosher_available: parsed["kosher_available"], location_details: parsed["location_details"], operator_id: parsed["operator_id"], operator_url: parsed["operator_url"], operator_type: parsed["operator_type"], walking_time_proxy_id: parsed["walking_time_proxy_id"], sort_name: parsed["sort_name"], mobile_ordering: parsed["mobile_ordering"], park: "Magic Kingdom")
end

epDining.each do |restaurant|
  response = RestClient.get("https://touringplans.com/epcot/dining/#{restaurant[:permalink]}.json")
  parsed = JSON.parse(response)
  Restaurant.create(name: parsed["name"], permalink: parsed["permalink"], category_code: parsed["category_code"], portion_size: parsed["portion_size"], cost_code: parsed["cost_code"], cuisine: parsed["cuisine"], entree_range: parsed["entree_range"], parking: parsed["parking"], bar: parsed["bar"], wine_list: parsed["wine_list"], dress: parsed["dress"], awards: parsed["awards"], breakfast_hours: parsed["breakfast_hours"], lunch_hours: parsed["lunch_hours"], dinner_hours: parsed["dinner_hours"], house_specialties: parsed["house_specialties"], adult_breakfast_menu_url: parsed["adult_breakfast_menu_url"], adult_lunch_menu_url: parsed["adult_lunch_menu_url"], adult_dinner_menu_url: parsed["adult_dinner_menu_url"], child_breakfast_menu_url: parsed["child_breakfast_menu_url"], child_lunch_menu_url: parsed["child_lunch_menu_url"], child_dinner_menu_url: parsed["child_dinner_menu_url"], requires_credit_card: parsed["requires_credit_card"], requires_pre_payment: parsed["requires_pre_payment"], opened_on: parsed["opened_on"], disney_permalink: parsed["disney_permalink"], code: parsed["code"], short_name: parsed["short_name"], accepts_reservations: parsed["accepts_reservations"], kosher_available: parsed["kosher_available"], location_details: parsed["location_details"], operator_id: parsed["operator_id"], operator_url: parsed["operator_url"], operator_type: parsed["operator_type"], walking_time_proxy_id: parsed["walking_time_proxy_id"], sort_name: parsed["sort_name"], mobile_ordering: parsed["mobile_ordering"], park: "Epcot")
end

hsDining.each do |restaurant|
  response = RestClient.get("https://touringplans.com/hollywood-studios/dining/#{restaurant[:permalink]}.json")
  parsed = JSON.parse(response)
  Restaurant.create(name: parsed["name"], permalink: parsed["permalink"], category_code: parsed["category_code"], portion_size: parsed["portion_size"], cost_code: parsed["cost_code"], cuisine: parsed["cuisine"], entree_range: parsed["entree_range"], parking: parsed["parking"], bar: parsed["bar"], wine_list: parsed["wine_list"], dress: parsed["dress"], awards: parsed["awards"], breakfast_hours: parsed["breakfast_hours"], lunch_hours: parsed["lunch_hours"], dinner_hours: parsed["dinner_hours"], house_specialties: parsed["house_specialties"], adult_breakfast_menu_url: parsed["adult_breakfast_menu_url"], adult_lunch_menu_url: parsed["adult_lunch_menu_url"], adult_dinner_menu_url: parsed["adult_dinner_menu_url"], child_breakfast_menu_url: parsed["child_breakfast_menu_url"], child_lunch_menu_url: parsed["child_lunch_menu_url"], child_dinner_menu_url: parsed["child_dinner_menu_url"], requires_credit_card: parsed["requires_credit_card"], requires_pre_payment: parsed["requires_pre_payment"], opened_on: parsed["opened_on"], disney_permalink: parsed["disney_permalink"], code: parsed["code"], short_name: parsed["short_name"], accepts_reservations: parsed["accepts_reservations"], kosher_available: parsed["kosher_available"], location_details: parsed["location_details"], operator_id: parsed["operator_id"], operator_url: parsed["operator_url"], operator_type: parsed["operator_type"], walking_time_proxy_id: parsed["walking_time_proxy_id"], sort_name: parsed["sort_name"], mobile_ordering: parsed["mobile_ordering"], park: "Hollywood Studios")
end

akDining.each do |restaurant|
  response = RestClient.get("https://touringplans.com/animal-kingdom/dining/#{restaurant[:permalink]}.json")
  parsed = JSON.parse(response)
  Restaurant.create(name: parsed["name"], permalink: parsed["permalink"], category_code: parsed["category_code"], portion_size: parsed["portion_size"], cost_code: parsed["cost_code"], cuisine: parsed["cuisine"], entree_range: parsed["entree_range"], parking: parsed["parking"], bar: parsed["bar"], wine_list: parsed["wine_list"], dress: parsed["dress"], awards: parsed["awards"], breakfast_hours: parsed["breakfast_hours"], lunch_hours: parsed["lunch_hours"], dinner_hours: parsed["dinner_hours"], house_specialties: parsed["house_specialties"], adult_breakfast_menu_url: parsed["adult_breakfast_menu_url"], adult_lunch_menu_url: parsed["adult_lunch_menu_url"], adult_dinner_menu_url: parsed["adult_dinner_menu_url"], child_breakfast_menu_url: parsed["child_breakfast_menu_url"], child_lunch_menu_url: parsed["child_lunch_menu_url"], child_dinner_menu_url: parsed["child_dinner_menu_url"], requires_credit_card: parsed["requires_credit_card"], requires_pre_payment: parsed["requires_pre_payment"], opened_on: parsed["opened_on"], disney_permalink: parsed["disney_permalink"], code: parsed["code"], short_name: parsed["short_name"], accepts_reservations: parsed["accepts_reservations"], kosher_available: parsed["kosher_available"], location_details: parsed["location_details"], operator_id: parsed["operator_id"], operator_url: parsed["operator_url"], operator_type: parsed["operator_type"], walking_time_proxy_id: parsed["walking_time_proxy_id"], sort_name: parsed["sort_name"], mobile_ordering: parsed["mobile_ordering"], park: "Animal Kingdom")
end

tlDining.each do |restaurant|
  response = RestClient.get("https://touringplans.com/typhoon-lagoon/dining/#{restaurant[:permalink]}.json")
  parsed = JSON.parse(response)
  Restaurant.create(name: parsed["name"], permalink: parsed["permalink"], category_code: parsed["category_code"], portion_size: parsed["portion_size"], cost_code: parsed["cost_code"], cuisine: parsed["cuisine"], entree_range: parsed["entree_range"], parking: parsed["parking"], bar: parsed["bar"], wine_list: parsed["wine_list"], dress: parsed["dress"], awards: parsed["awards"], breakfast_hours: parsed["breakfast_hours"], lunch_hours: parsed["lunch_hours"], dinner_hours: parsed["dinner_hours"], house_specialties: parsed["house_specialties"], adult_breakfast_menu_url: parsed["adult_breakfast_menu_url"], adult_lunch_menu_url: parsed["adult_lunch_menu_url"], adult_dinner_menu_url: parsed["adult_dinner_menu_url"], child_breakfast_menu_url: parsed["child_breakfast_menu_url"], child_lunch_menu_url: parsed["child_lunch_menu_url"], child_dinner_menu_url: parsed["child_dinner_menu_url"], requires_credit_card: parsed["requires_credit_card"], requires_pre_payment: parsed["requires_pre_payment"], opened_on: parsed["opened_on"], disney_permalink: parsed["disney_permalink"], code: parsed["code"], short_name: parsed["short_name"], accepts_reservations: parsed["accepts_reservations"], kosher_available: parsed["kosher_available"], location_details: parsed["location_details"], operator_id: parsed["operator_id"], operator_url: parsed["operator_url"], operator_type: parsed["operator_type"], walking_time_proxy_id: parsed["walking_time_proxy_id"], sort_name: parsed["sort_name"], mobile_ordering: parsed["mobile_ordering"], park: "Typhoon Lagoon")
end
