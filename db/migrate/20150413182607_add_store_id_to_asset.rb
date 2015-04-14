class AddStoreIdToAsset < ActiveRecord::Migration
  def change
    add_column  :spree_assets, :store_id, :integer
    add_index   :spree_assets, :store_id
  end
end
