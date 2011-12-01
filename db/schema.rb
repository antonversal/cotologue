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

ActiveRecord::Schema.define(:version => 20111201201152) do

  create_table "filters", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_values", :force => true do |t|
    t.integer  "product_id", :null => false
    t.integer  "value_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_values", ["product_id", "value_id"], :name => "index_product_values_on_product_id_and_value_id"
  add_index "product_values", ["product_id"], :name => "index_product_values_on_product_id"
  add_index "product_values", ["value_id"], :name => "index_product_values_on_value_id"

  create_table "products", :force => true do |t|
    t.string   "name",        :null => false
    t.text     "description"
    t.integer  "section_id",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["section_id"], :name => "index_products_on_section_id"

  create_table "sections", :force => true do |t|
    t.string   "name",        :null => false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "values", :force => true do |t|
    t.string   "name",       :null => false
    t.integer  "filter_id",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "values", ["filter_id"], :name => "index_values_on_filter_id"

end
