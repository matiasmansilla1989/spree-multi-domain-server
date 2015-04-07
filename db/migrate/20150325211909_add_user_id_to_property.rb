class AddUserIdToProperty < ActiveRecord::Migration
  def change
    add_column :spree_properties, :user_id, :integer
    add_index :spree_properties, :user_id
  end
end
