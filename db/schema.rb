<<<<<<< HEAD
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

<<<<<<< HEAD
ActiveRecord::Schema[7.1].define(version: 2024_09_02_221249) do
=======
ActiveRecord::Schema[7.1].define(version: 2024_09_02_204805) do
>>>>>>> master
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
<<<<<<< HEAD
    t.string "model"
    t.integer "year"
    t.text "description"
    t.integer "kilometers"
    t.float "price"
    t.string "category"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bikes_on_user_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "bike_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_id"], name: "index_purchases_on_bike_id"
    t.index ["user_id"], name: "index_purchases_on_user_id"
=======
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "model"
    t.text "description"
    t.integer "kilometers"
    t.decimal "price"
    t.string "category"
  end

  create_table "chats", force: :cascade do |t|
    t.text "message"
    t.bigint "user_id", null: false
    t.bigint "offer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_chats_on_offer_id"
    t.index ["user_id"], name: "index_chats_on_user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "status"
    t.bigint "bike_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_id"], name: "index_offers_on_bike_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
>>>>>>> master
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
<<<<<<< HEAD
=======
    t.string "username"
    t.string "location"
>>>>>>> master
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

<<<<<<< HEAD
  add_foreign_key "bikes", "users"
  add_foreign_key "purchases", "bikes"
  add_foreign_key "purchases", "users"
=======
  add_foreign_key "chats", "offers"
  add_foreign_key "chats", "users"
  add_foreign_key "offers", "bikes"
  add_foreign_key "offers", "users"
>>>>>>> master
=======
ActiveRecord::Schema[7.1].define(version: 0) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

>>>>>>> 2b680dd (restart db)
end
