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

ActiveRecord::Schema.define(version: 20140831024512) do

  create_table "test_logs", force: true do |t|
    t.integer  "test_stall_id"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "changed_at"
  end

  add_index "test_logs", ["test_stall_id"], name: "index_test_logs_on_test_stall_id"

  create_table "test_stalls", force: true do |t|
    t.string   "name"
    t.string   "uuid"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
