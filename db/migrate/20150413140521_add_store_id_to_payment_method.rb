class AddStoreIdToPaymentMethod < ActiveRecord::Migration
  def change
    add_column  :spree_payment_methods, :store_id, :integer
    add_index   :spree_payment_methods, :store_id
  end
end
