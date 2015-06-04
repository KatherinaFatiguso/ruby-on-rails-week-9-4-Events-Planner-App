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

ActiveRecord::Schema.define(version: 20150604020858) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "phone",      default: "--- []\n"
    t.string   "address",    default: "--- []\n"
    t.string   "email"
    t.text     "comment"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "start"
    t.datetime "end"
    t.string   "address",    default: "--- []\n"
    t.text     "comment"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "contact_id"
    t.string   "name"
    t.datetime "deadline"
    t.decimal  "cost",       precision: 7, scale: 2
    t.text     "comment"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

end