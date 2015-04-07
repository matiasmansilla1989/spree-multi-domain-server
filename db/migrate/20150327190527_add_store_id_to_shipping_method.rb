class AddStoreIdToShippingMethod < ActiveRecord::Migration
  def change
    add_column  :spree_shipping_methods, :store_id, :integer
    add_index   :spree_shipping_methods, :store_id
  end
end
