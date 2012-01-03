class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.string :name
      t.integer :quantity
      t.float :unit_price
      t.float :full_price
      t.timestamps
    end
  end

  def self.down
    drop_table :line_items
  end
end
