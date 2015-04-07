class AddUserIdToTaxon < ActiveRecord::Migration
  def change
    add_column  :spree_taxons, :user_id, :integer
    add_index   :spree_taxons, :user_id
  end
end
