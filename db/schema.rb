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

ActiveRecord::Schema.define(version: 20140215220132) do

  create_table "annual_registrations", force: true do |t|
    t.integer  "event_id"
    t.boolean  "sales"
    t.boolean  "paid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_infos", force: true do |t|
    t.string   "email"
    t.string   "phone"
    t.string   "website"
    t.string   "address_street_1"
    t.string   "address_street_2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.datetime "reg_opens"
    t.datetime "reg_closes"
    t.datetime "event_starts"
    t.datetime "event_ends"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exhibit_resources", force: true do |t|
    t.integer  "electrical_requirements"
    t.integer  "noise_levels"
    t.integer  "internet"
    t.string   "radio_frequencies"
    t.integer  "safety_issues"
    t.string   "safety_issues_description"
    t.boolean  "water"
    t.boolean  "exhaust"
    t.boolean  "sanitation"
    t.string   "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exhibit_spaces", force: true do |t|
    t.integer  "floor_space_requirement"
    t.string   "floor_space_note"
    t.string   "activities"
    t.integer  "table_count"
    t.integer  "chair_count"
    t.integer  "location_preference"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.integer  "contact_info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "birthdate"
    t.string   "emergency_contact"
    t.string   "self_notes"
    t.boolean  "active"
    t.string   "admin_notes"
    t.integer  "contact_info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.boolean  "active"
    t.boolean  "verified"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
