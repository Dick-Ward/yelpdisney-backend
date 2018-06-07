class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :permalink
      t.string :category_code
      t.string :portion_size
      t.string :cost_code
      t.string :cuisine
      t.string :entree_range
      t.string :parking
      t.string :bar
      t.string :wine_list
      t.string :dress
      t.string :awards
      t.string :breakfast_hours
      t.string :lunch_hours
      t.string :dinner_hours
      t.string :house_specialties
      t.string :adult_breakfast_menu_url
      t.string :adult_lunch_menu_url
      t.string :adult_dinner_menu_url
      t.string :child_breakfast_menu_url
      t.string :child_lunch_menu_url
      t.string :child_dinner_menu_url
      t.boolean :requires_credit_card
      t.boolean :requires_pre_payment
      t.string :opened_on
      t.string :disney_permalink
      t.string :code
      t.string :short_name
      t.boolean :accepts_reservations
      t.boolean :kosher_available
      t.string :location_details
      t.string :operator_id
      t.string :operator_url
      t.string :operator_type
      t.string :walking_time_proxy_id
      t.string :sort_name
      t.boolean :mobile_ordering
      t.string :park
      t.timestamps
    end
  end
end
