class AddStoreIdToTaxCategory < ActiveRecord::Migration
  def change
    add_column  :spree_tax_categories, :store_id, :integer
    add_index   :spree_tax_categories, :store_id
  end
end
