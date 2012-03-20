class AddMemberNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :member_name, :string

  end
end
