class AddStoreIdToTaxon < ActiveRecord::Migration
  def change
    add_column  :spree_taxons, :store_id, :integer
    add_index   :spree_taxons, :store_id
  end
end
