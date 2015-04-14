class AddStoreIdToCountry < ActiveRecord::Migration
  def change
    add_column  :spree_countries, :store_id, :integer
    add_index   :spree_countries, :store_id
  end
end
