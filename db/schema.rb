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

ActiveRecord::Schema.define(version: 20160714063631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drawers", force: :cascade do |t|
    t.integer  "drawer_number"
    t.integer  "qty_rows"
    t.integer  "qty_columns"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "item_id"
  end

  create_table "items", force: :cascade do |t|
    t.string   "serie"
    t.integer  "height"
    t.integer  "number_drawers"
    t.boolean  "double_door",    default: false
    t.boolean  "single_door",    default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.text     "description"
    t.integer  "order_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "parts", force: :cascade do |t|
    t.text     "cell_content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "row_number"
    t.integer  "column_number"
    t.integer  "drawer_id"
  end

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.text     "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
