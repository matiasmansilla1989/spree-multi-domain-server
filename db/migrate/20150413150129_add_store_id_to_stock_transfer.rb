class AddStoreIdToStockTransfer < ActiveRecord::Migration
  def change
    add_column  :spree_stock_transfers, :store_id, :integer
    add_index   :spree_stock_transfers, :store_id
  end
end
