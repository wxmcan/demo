class CreateTaobaokeProducts < ActiveRecord::Migration
  def self.up
    create_table :taobaoke_products do |t|
      t.integer :num_iid, :limit => 8
      t.string :title
      t.string :nick
      t.float :price
      t.string :pic_url
      t.string :click_url
      t.float :commission
      t.float :commission_rate
      t.integer :commission_num
      t.float :commission_volume
      t.float :coupon_price
      t.float :coupon_rate
      t.datetime :coupon_start_time
      t.datetime :coupon_end_time
      t.integer :volume
      t.string :shop_click_url
      t.integer :seller_credit_score
      t.string :item_location
      t.string :shop_type
      t.string :taobaoke_cat_click_url
      t.string :keyword_click_url
      t.timestamps
    end
  end

  def self.down
    drop_table :taobaoke_products
  end
end
