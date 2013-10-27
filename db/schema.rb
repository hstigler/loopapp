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

ActiveRecord::Schema.define(version: 20131027201340) do

  create_table "clubs", force: true do |t|
    t.integer  "identifier"
    t.string   "make"
    t.string   "model"
    t.integer  "order"
    t.integer  "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "round_holes", force: true do |t|
    t.integer  "identifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", force: true do |t|
    t.integer  "identifier"
    t.integer  "startHole"
    t.integer  "endHole"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
  end

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
