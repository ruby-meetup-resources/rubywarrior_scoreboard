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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141121230045) do

  create_table "scores", :force => true do |t|
    t.integer  "warrior_id",                           :null => false
    t.integer  "level_number",                         :null => false
    t.integer  "level_score",                          :null => false
    t.integer  "time_bonus",                           :null => false
    t.integer  "clear_bonus"
    t.string   "total_score"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.text     "source_code"
    t.string   "tower",        :default => "beginner", :null => false
  end

  create_table "warriors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
