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

ActiveRecord::Schema.define(version: 20140129052110) do

  create_table "annual_registrations", force: true do |t|
    t.integer  "eventId"
    t.boolean  "sales"
    t.boolean  "paid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blorps", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_infos", force: true do |t|
    t.string   "email"
    t.string   "phone"
    t.string   "website"
    t.string   "addressStreet1"
    t.string   "addressStreet2"
    t.string   "addressCity"
    t.string   "addressState"
    t.string   "addressZip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exhibit_resources", force: true do |t|
    t.integer  "electricalRequirements"
    t.integer  "noiseLevels"
    t.integer  "internet"
    t.string   "radioFrequencies"
    t.integer  "safetyIssues"
    t.string   "safetyIssuesDescription"
    t.boolean  "water"
    t.boolean  "exhaust"
    t.boolean  "sanitation"
    t.string   "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exhibit_spaces", force: true do |t|
    t.integer  "floorSpaceRequirement"
    t.string   "floorSpaceNote"
    t.string   "activities"
    t.integer  "tableCount"
    t.integer  "chairCount"
    t.integer  "locationPreference"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organizations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.datetime "birthdate"
    t.string   "emergencyContact"
    t.string   "selfNotes"
    t.boolean  "active"
    t.string   "adminNotes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.boolean  "active"
    t.boolean  "verified"
    t.datetime "signupDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
