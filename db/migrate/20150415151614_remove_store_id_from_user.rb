class RemoveStoreIdFromUser < ActiveRecord::Migration
  def change
    remove_column :spree_users, :store_id
  end
end
