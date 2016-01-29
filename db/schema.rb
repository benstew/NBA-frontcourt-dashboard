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

ActiveRecord::Schema.define(version: 20160129014934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.string   "team"
    t.integer  "games_played"
    t.integer  "wins"
    t.integer  "losses"
    t.float    "minutes"
    t.float    "points"
    t.float    "touches"
    t.float    "time_of_possession"
    t.float    "seconds_per_touch"
    t.float    "dribbles_per_touch"
    t.float    "points_per_touch"
    t.string   "position"
    t.float    "frontcourt_touches"
    t.float    "elbow_touches"
    t.float    "post_touches"
    t.float    "paint_touches"
    t.float    "points_per_elbow_touch"
    t.float    "points_per_post_touch"
    t.float    "points_per_paint_touch"
    t.float    "points_per_fc_touch"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
