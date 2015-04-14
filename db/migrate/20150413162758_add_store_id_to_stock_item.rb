class AddStoreIdToStockItem < ActiveRecord::Migration
  def change
    add_column  :spree_stock_items, :store_id, :integer
    add_index   :spree_stock_items, :store_id
  end
end
