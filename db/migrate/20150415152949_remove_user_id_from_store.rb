class RemoveUserIdFromStore < ActiveRecord::Migration
  def change
    remove_column :spree_stores, :user_id
  end
end
