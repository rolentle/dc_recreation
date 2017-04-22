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

ActiveRecord::Schema.define(version: 20170422180215) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recreation_centers", force: :cascade do |t|
    t.float    "x"
    t.float    "y"
    t.integer  "objectid"
    t.text     "name"
    t.text     "address"
    t.text     "use_type"
    t.integer  "ward_id"
    t.text     "school_site"
    t.text     "pool"
    t.text     "pool_name"
    t.text     "child_care"
    t.text     "senior_services"
    t.text     "web_url"
    t.string   "phone"
    t.string   "status"
    t.float    "xcoord"
    t.float    "ycoord"
    t.integer  "addrid"
    t.text     "fitness_center"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
