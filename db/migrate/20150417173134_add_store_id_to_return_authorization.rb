class AddStoreIdToReturnAuthorization < ActiveRecord::Migration
  def change
    add_column  :spree_return_authorizations, :store_id, :integer
    add_index   :spree_return_authorizations, :store_id
  end
end
