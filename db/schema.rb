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

ActiveRecord::Schema.define(:version => 20130402093934) do

  create_table "categories", :force => true do |t|
    t.string   "name",       :limit => 500,                    :null => false
    t.string   "image",                                        :null => false
    t.integer  "parser_id",                                    :null => false
    t.integer  "parent",                    :default => 0,     :null => false
    t.boolean  "exported",                  :default => false, :null => false
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "title",       :limit => 500,                     :null => false
    t.text     "des",                                            :null => false
    t.string   "art",                                            :null => false
    t.string   "images",      :limit => 1500,                    :null => false
    t.string   "link",        :limit => 1000,                    :null => false
    t.string   "price",                                          :null => false
    t.integer  "category_id",                                    :null => false
    t.boolean  "parsed",                      :default => false, :null => false
    t.boolean  "exported",                    :default => false, :null => false
    t.integer  "accessed"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

end
