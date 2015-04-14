class AddStoreIdToState < ActiveRecord::Migration
  def change
    add_column  :spree_states, :store_id, :integer
    add_index   :spree_states, :store_id
  end
end
