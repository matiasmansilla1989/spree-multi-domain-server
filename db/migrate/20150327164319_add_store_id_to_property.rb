class AddStoreIdToProperty < ActiveRecord::Migration
  def change
    add_column  :spree_properties, :store_id, :integer
    add_index   :spree_properties, :store_id
  end
end
