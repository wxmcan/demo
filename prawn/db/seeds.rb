order = Order.create(:number => "12345678", :total => 40)
li1 = { :name => "Rins", :quantity => 2, :unit_price => 5, :full_price => 10 }
li2 = { :name => "Necklace", :quantity => 3, :unit_price => 10, :full_price => 30 }
order.line_items.build(li1)
order.line_items.build(li2)
order.save!
