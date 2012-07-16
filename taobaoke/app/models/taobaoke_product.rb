class TaobaokeProduct < ActiveRecord::Base
  attr_accessible :num_iid, :title, :nick, :price, :pic_url, :click_url, :commission, :commission_rate, :commission_num, :commission_volume, :coupon_price, :coupon_rate, :coupon_start_time, :coupon_end_time, :volume, :shop_click_url, :seller_credit_score, :item_location, :shop_type, :taobaoke_cat_click_url, :keyword_click_url
  FIELDS = "num_iid,title,nick,pic_url,price,click_url,commission,commission_rate,commission_num,commission_volume,shop_click_url,seller_credit_score,item_location,volume,coupon_price,coupon_rate,coupon_start_time,coupon_end_time,shop_type"

  def coupon
    options = {:fields => FIELDS}.merge(get_options)
    Taobao::Client.new.invoke('taobao.taobaoke.items.coupon.get', { :cid => 16, :nick => 'quickerbuy' }) #["taobaoke_items_get_response"]
  end

  def get_options
    { :cid => 16, :nick => 'quickerbuy' }
  end

  def convert
    options = { :num_iids => '15430371400', :nick => 'quickerbuy', :fields => FIELDS }
    p Taobao::Client.new.invoke("taobao.taobaoke.items.convert" , options)
  end

  def save_coupon_items

  end

end
