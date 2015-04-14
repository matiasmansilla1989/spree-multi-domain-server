class AddStoreIdToZone < ActiveRecord::Migration
  def change
    add_column  :spree_zones, :store_id, :integer
    add_index   :spree_zones, :store_id
  end
end
