class LineItem < ActiveRecord::Base
  attr_accessible :name, :quantity, :unit_price, :full_price

  belongs_to :order
end
