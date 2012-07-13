class AddCidToTaobaokeProducts < ActiveRecord::Migration
  def change
    add_column :taobaoke_products, :cid, :integer, :before => :num_iid
  end
end
