class AddStoreIdToProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :store_id, :integer
    add_index :spree_products, :store_id
  end
end
