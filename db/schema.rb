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

ActiveRecord::Schema.define(version: 20140513034227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "congress_people", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "nickname"
    t.string  "img_url"
    t.string  "title"
    t.string  "chamber"
    t.string  "district"
    t.boolean "in_office"
    t.string  "state"
    t.string  "state_name"
    t.string  "term_start"
    t.string  "term_end"
    t.string  "office"
    t.string  "phone"
    t.string  "contact_form"
    t.string  "website"
    t.string  "twitter_id"
    t.string  "facebook_id"
    t.string  "govtrack_id"
  end

  create_table "congress_people_users", id: false, force: true do |t|
    t.integer "user_id",            null: false
    t.integer "congress_person_id", null: false
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
  end

end
