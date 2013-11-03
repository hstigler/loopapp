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

ActiveRecord::Schema.define(version: 20131103042245) do

  create_table "clubs", force: true do |t|
    t.integer  "identifier"
    t.string   "make"
    t.string   "model"
    t.integer  "order"
    t.integer  "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
  end

  add_index "clubs", ["player_id"], name: "index_clubs_on_player_id"

  create_table "courses", force: true do |t|
    t.integer  "identifier"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "facility_id"
  end

  add_index "courses", ["facility_id"], name: "index_courses_on_facility_id"

  create_table "facilities", force: true do |t|
    t.integer  "identifier"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "holes", force: true do |t|
    t.integer  "identifier"
    t.integer  "number"
    t.integer  "par"
    t.integer  "handicap"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "facility_id"
  end

  add_index "holes", ["facility_id"], name: "index_holes_on_facility_id"

  create_table "players", force: true do |t|
    t.integer  "identifier"
    t.string   "firstName"
    t.string   "lastName"
    t.integer  "handicap"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_holes", force: true do |t|
    t.integer  "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "round_id"
    t.integer  "hole_id"
  end

  add_index "round_holes", ["hole_id"], name: "index_round_holes_on_hole_id"
  add_index "round_holes", ["round_id"], name: "index_round_holes_on_round_id"

  create_table "rounds", force: true do |t|
    t.integer  "identifier"
    t.integer  "startHole"
    t.integer  "endHole"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tee_id"
    t.integer  "player_id"
    t.integer  "course_id"
  end

  add_index "rounds", ["course_id"], name: "index_rounds_on_course_id"
  add_index "rounds", ["player_id"], name: "index_rounds_on_player_id"
  add_index "rounds", ["tee_id"], name: "index_rounds_on_tee_id"

  create_table "shots", force: true do |t|
    t.integer  "identifier"
    t.float    "startLat"
    t.float    "startLon"
    t.float    "endLat"
    t.float    "endLon"
    t.integer  "score"
    t.integer  "lie"
    t.datetime "time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "club_id"
    t.integer  "round_hole_id"
  end

  add_index "shots", ["club_id"], name: "index_shots_on_club_id"
  add_index "shots", ["round_hole_id"], name: "index_shots_on_round_hole_id"

  create_table "tees", force: true do |t|
    t.integer  "identifier"
    t.integer  "name"
    t.integer  "distance"
    t.float    "courseRating"
    t.integer  "slopeRating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
