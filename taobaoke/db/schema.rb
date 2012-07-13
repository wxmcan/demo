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

ActiveRecord::Schema.define(:version => 20120713085154) do

  create_table "taobaoke_products", :force => true do |t|
    t.integer  "num_iid",                :limit => 8
    t.string   "title"
    t.string   "nick"
    t.float    "price"
    t.string   "pic_url"
    t.string   "click_url"
    t.float    "commission"
    t.float    "commission_rate"
    t.integer  "commission_num"
    t.float    "commission_volume"
    t.float    "coupon_price"
    t.float    "coupon_rate"
    t.datetime "coupon_start_time"
    t.datetime "coupon_end_time"
    t.integer  "volume"
    t.string   "shop_click_url"
    t.integer  "seller_credit_score"
    t.string   "item_location"
    t.string   "shop_type"
    t.string   "taobaoke_cat_click_url"
    t.string   "keyword_click_url"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "cid"
  end

end
