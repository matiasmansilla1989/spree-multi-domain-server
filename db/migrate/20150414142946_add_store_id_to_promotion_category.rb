class AddStoreIdToPromotionCategory < ActiveRecord::Migration
  def change
    add_column  :spree_promotion_categories, :store_id, :integer
    add_index   :spree_promotion_categories, :store_id
  end
end
