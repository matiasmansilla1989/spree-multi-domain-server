class AddStoreIdToUser < ActiveRecord::Migration
  def change
    add_column  :spree_users, :store_id, :integer
    add_index   :spree_users, :store_id
  end
end
