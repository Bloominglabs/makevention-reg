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

ActiveRecord::Schema.define(version: 20140301171614) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contact_infos", force: true do |t|
    t.string   "email"
    t.string   "phone"
    t.string   "website"
    t.string   "address_street_1"
    t.string   "address_street_2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zip"
    t.integer  "current",          default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_registrations", force: true do |t|
    t.boolean  "has_sales"
    t.decimal  "exhibit_rate",    precision: 8, scale: 2
    t.decimal  "pledge",          precision: 8, scale: 2
    t.decimal  "amount_paid",     precision: 8, scale: 2
    t.boolean  "paid_in_full"
    t.integer  "organizer",                               default: 0, null: false
    t.integer  "sponsor",                                 default: 0, null: false
    t.integer  "event_id"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "event_registrations", ["event_id", "organization_id"], name: "index_event_registrations_on_event_id_and_organization_id", unique: true, using: :btree

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
    t.integer  "electrical_requirements",   default: 0, null: false
    t.integer  "noise_levels",              default: 0, null: false
    t.integer  "internet",                  default: 0, null: false
    t.string   "radio_frequencies"
    t.integer  "safety_issues",             default: 0, null: false
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
    t.integer  "location_preference",     default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "org_people", force: true do |t|
    t.integer  "organization_id"
    t.integer  "person_id"
    t.integer  "org_role",        default: 0, null: false
    t.integer  "active",          default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "org_people", ["organization_id", "person_id"], name: "index_org_people_on_organization_id_and_person_id", unique: true, using: :btree

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
    t.string   "admin_notes"
    t.integer  "contact_info_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "active",          default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
    t.string   "remember_token"
    t.integer  "roles_mask"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
