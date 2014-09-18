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

ActiveRecord::Schema.define(version: 20140916012457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "additional_details", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_skills", force: true do |t|
    t.integer  "expertise_area_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expertise_areas", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "company"
    t.string   "location_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "company_logo"
    t.string   "title"
    t.string   "status"
    t.text     "highlights"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_types", force: true do |t|
    t.string "name"
    t.string "description"
  end

  create_table "locations", force: true do |t|
    t.spatial "geom",             limit: {:srid=>4326, :type=>"point", :has_z=>true, :geographic=>true}
    t.string  "address1"
    t.string  "address2"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.string  "country"
    t.string  "name"
    t.string  "description"
    t.integer "location_type_id"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "location_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "date_note"
    t.string   "degree"
    t.string   "status"
    t.text     "additional_info"
    t.string   "image_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_specifics", force: true do |t|
    t.integer  "skill_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
