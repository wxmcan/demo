class Order < ActiveRecord::Base
  attr_accessible :number, :total
  has_many :line_items
end
