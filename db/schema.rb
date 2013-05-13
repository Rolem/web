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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130513073325) do

  create_table "game_client_uses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "game_client_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "game_client_uses", ["game_client_id"], :name => "index_game_client_uses_on_game_client_id"
  add_index "game_client_uses", ["user_id"], :name => "index_game_client_uses_on_user_id"

  create_table "game_clients", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "game_clients", ["name"], :name => "index_game_clients_on_name"

  create_table "receipts", :force => true do |t|
    t.string   "model"
    t.string   "city"
    t.string   "place"
    t.date     "date_of_purchase"
    t.string   "guarantee_number"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "receipts", ["user_id"], :name => "index_receipts_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "gender"
    t.date     "date_of_birth"
    t.integer  "social_level"
    t.string   "city"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "game_genre"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
