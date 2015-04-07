class AddUserIdToTaxonomy < ActiveRecord::Migration
  def change
    add_column  :spree_taxonomies, :user_id, :integer
    add_index   :spree_taxonomies, :user_id
  end
end
