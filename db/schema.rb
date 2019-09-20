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

ActiveRecord::Schema.define(version: 2019_09_20_113901) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.integer "truck_id"
    t.string "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_logo"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "truck_id"
    t.text "body"
    t.integer "service_rating"
    t.integer "value_rating"
    t.integer "cleanliness_rating"
    t.integer "food_rating"
    t.float "average_rating"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.text "name"
    t.text "bio"
    t.text "tagline"
    t.text "base_city"
    t.text "phone"
    t.text "email"
    t.text "website"
    t.text "facebook"
    t.text "twitter"
    t.text "instagram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "z_id"
    t.integer "price_range"
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "address"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
