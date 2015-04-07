class AddCustomerStoreIdToUser < ActiveRecord::Migration
  def change
    add_column  :spree_users, :store_customer_id, :integer
    add_index   :spree_users, :store_customer_id
  end
end
