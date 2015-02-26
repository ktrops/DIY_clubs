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

ActiveRecord::Schema.define(version: 20150211041122) do

  create_table "buildings", force: :cascade do |t|
    t.string  "description"
    t.integer "capacity"
    t.boolean "need"
    t.integer "event_id"
  end

  add_index "buildings", ["event_id"], name: "index_buildings_on_event_id"

  create_table "events", force: :cascade do |t|
    t.string  "name"
    t.string  "location"
    t.date    "event_date"
    t.integer "building_id"
  end

  create_table "events_musics", force: :cascade do |t|
    t.integer "music_id_id"
    t.integer "event_id_id"
  end

  create_table "musics", force: :cascade do |t|
    t.string  "type"
    t.string  "name"
    t.integer "voltage_usage"
    t.string  "details"
    t.integer "powersource_id"
  end

  create_table "powersource", force: :cascade do |t|
    t.string  "description"
    t.integer "voltage"
  end

end
