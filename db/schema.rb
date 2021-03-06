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

ActiveRecord::Schema.define(version: 20160224191225) do

  create_table "food_meals", force: :cascade do |t|
    t.integer  "food_id",        limit: 4
    t.integer  "meal_id",        limit: 4
    t.float    "quantity",       limit: 24
    t.float    "c_protein",      limit: 24
    t.float    "c_carbohydrate", limit: 24
    t.float    "c_lipid",        limit: 24
    t.float    "c_calorie",      limit: 24
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "food_meals", ["food_id"], name: "index_food_meals_on_food_id", using: :btree
  add_index "food_meals", ["meal_id"], name: "index_food_meals_on_meal_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.float    "protein",      limit: 24
    t.float    "carbohydrate", limit: 24
    t.float    "lipid",        limit: 24
    t.float    "calorie",      limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "meal_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "meals", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.integer  "meal_type_id", limit: 4
    t.datetime "date"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "meals", ["meal_type_id"], name: "index_meals_on_meal_type_id", using: :btree
  add_index "meals", ["user_id"], name: "index_meals_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.float    "protein",      limit: 24
    t.float    "carbohydrate", limit: 24
    t.float    "lipid",        limit: 24
    t.float    "calorie",      limit: 24
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "food_meals", "foods"
  add_foreign_key "food_meals", "meals"
  add_foreign_key "meals", "meal_types"
  add_foreign_key "meals", "users"
end
