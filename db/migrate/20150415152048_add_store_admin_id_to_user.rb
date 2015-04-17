class AddStoreAdminIdToUser < ActiveRecord::Migration
  def change
    add_column  :spree_users, :store_admin_id, :integer
    add_index   :spree_users, :store_admin_id
  end
end
