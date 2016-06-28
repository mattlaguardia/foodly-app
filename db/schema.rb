# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160628043615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurant_users", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "user_id"
  end

  add_index "restaurant_users", ["restaurant_id"], name: "index_restaurant_users_on_restaurant_id", using: :btree
  add_index "restaurant_users", ["user_id"], name: "index_restaurant_users_on_user_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string  "name"
    t.string  "location"
    t.string  "phone_numbers"
    t.string  "featured_image"
    t.string  "thumb_url"
    t.string  "price_range"
    t.string  "cuisines"
    t.string  "aggregate_rating"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "restaurant_id"
    t.datetime "birthday"
  end

  add_foreign_key "restaurant_users", "restaurants"
  add_foreign_key "restaurant_users", "users"
end
