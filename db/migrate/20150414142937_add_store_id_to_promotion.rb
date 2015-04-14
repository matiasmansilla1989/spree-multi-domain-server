class AddStoreIdToPromotion < ActiveRecord::Migration
  def change
    add_column  :spree_promotions, :store_id, :integer
    add_index   :spree_promotions, :store_id
  end
end
