class AddStoreIdToVariant < ActiveRecord::Migration
  def change
    add_column  :spree_variants, :store_id, :integer
    add_index   :spree_variants, :store_id
  end
end
