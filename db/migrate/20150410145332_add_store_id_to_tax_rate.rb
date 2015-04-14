class AddStoreIdToTaxRate < ActiveRecord::Migration
  def change
    add_column  :spree_tax_rates, :store_id, :integer
    add_index   :spree_tax_rates, :store_id
  end
end
