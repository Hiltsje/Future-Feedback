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

ActiveRecord::Schema.define(version: 20151020195924) do

  create_table "decisions", force: :cascade do |t|
    t.string   "title"
    t.text     "forecast"
    t.date     "review_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "outcomes", force: :cascade do |t|
    t.text     "actual"
    t.string   "strength"
    t.string   "weakness"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "decision_id"
  end

  add_index "outcomes", ["decision_id"], name: "index_outcomes_on_decision_id"

end
