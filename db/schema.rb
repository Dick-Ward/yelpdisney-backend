# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181013152936) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "permalink"
    t.string "category_code"
    t.string "portion_size"
    t.string "cost_code"
    t.string "cuisine"
    t.string "entree_range"
    t.string "parking"
    t.string "bar"
    t.string "wine_list"
    t.string "dress"
    t.string "awards"
    t.string "breakfast_hours"
    t.string "lunch_hours"
    t.string "dinner_hours"
    t.string "house_specialties"
    t.boolean "requires_credit_card"
    t.boolean "requires_pre_payment"
    t.string "opened_on"
    t.string "disney_permalink"
    t.string "code"
    t.string "short_name"
    t.boolean "accepts_reservations"
    t.boolean "kosher_available"
    t.string "location_details"
    t.string "operator_id"
    t.string "operator_url"
    t.string "operator_type"
    t.string "walking_time_proxy_id"
    t.string "sort_name"
    t.boolean "mobile_ordering"
    t.string "park"
    t.string "resort_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "quality"
    t.integer "cleanliness"
    t.integer "service"
    t.integer "value"
    t.string "content"
    t.integer "restaurant_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
