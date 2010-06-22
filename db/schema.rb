# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100518030028) do

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "unit_id"
    t.string   "group_type"
    t.string   "rank"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_memberships", :force => true do |t|
    t.integer  "unit_id"
    t.integer  "person_id"
    t.string   "role"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", :force => true do |t|
    t.integer  "designation"
    t.string   "unit_type"
    t.string   "council"
    t.string   "district"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
