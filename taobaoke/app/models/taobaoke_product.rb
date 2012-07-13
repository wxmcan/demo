class TaobaokeProduct < ActiveRecord::Base
  attr_accessible :num_iid, :title, :nick, :price, :pic_url, :click_url, :commission, :commission_rate, :commission_num, :commission_volume, :coupon_price, :coupon_rate, :coupon_start_time, :coupon_end_time, :volume, :shop_click_url, :seller_credit_score, :item_location, :shop_type, :taobaoke_cat_click_url, :keyword_click_url

  def self.i 
    ::Taobao::Client.new.invoke('taobao.taobaoke.items.get', { :cid => 16, :nick => 'quickerbuy' })["taobaoke_items_get_response"]
  end


  def self.t(cid = 16)
    options = {:category_id => cid, :recommend_type => 1, :count => 20}
    Taobao::Client.new.invoke("taobao.categoryrecommend.items.get" , options)['favorite_items']['favorite_item'] 
  end

end
