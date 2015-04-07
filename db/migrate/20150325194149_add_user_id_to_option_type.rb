class AddUserIdToOptionType < ActiveRecord::Migration
  def change
    add_column :spree_option_types, :user_id, :integer
    add_index :spree_option_types, :user_id
  end
end
