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

ActiveRecord::Schema.define(version: 20151006204000) do

  create_table "lines", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "direction",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "train_stops", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.time     "arrive_time"
    t.time     "depart_time"
    t.integer  "line_id",     limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "train_stops_trains", id: false, force: :cascade do |t|
    t.integer "train_id",      limit: 4
    t.integer "train_stop_id", limit: 4
  end

  add_index "train_stops_trains", ["train_id"], name: "index_train_stops_trains_on_train_id", using: :btree
  add_index "train_stops_trains", ["train_stop_id"], name: "index_train_stops_trains_on_train_stop_id", using: :btree

  create_table "trains", force: :cascade do |t|
    t.integer  "number",     limit: 4
    t.integer  "line_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
