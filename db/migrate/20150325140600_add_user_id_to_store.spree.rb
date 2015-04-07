class AddUserIdToStore < ActiveRecord::Migration
  def change
    add_column :spree_stores, :user_id, :integer
    add_index :spree_stores, :user_id
  end
end
