class AddStoreIdToReturnAuthorizationReason < ActiveRecord::Migration
  def change
    add_column  :spree_return_authorization_reasons, :store_id, :integer
    add_index   :spree_return_authorization_reasons, :store_id
  end
end
