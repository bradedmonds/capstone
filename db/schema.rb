# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_16_210221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "instagram"
    t.integer "followers"
    t.string "facebook"
    t.integer "likes"
    t.string "spotify"
    t.integer "listeners"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "city"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "concerts", force: :cascade do |t|
    t.integer "city_id"
    t.integer "venue_id"
    t.string "date"
    t.string "name"
    t.integer "artist_id"
    t.string "ticket_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "venues", force: :cascade do |t|
    t.integer "city_id"
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
