class AddStoreIdToShippingCategory < ActiveRecord::Migration
  def change
    add_column  :spree_shipping_categories, :store_id, :integer
    add_index   :spree_shipping_categories, :store_id
  end
end
