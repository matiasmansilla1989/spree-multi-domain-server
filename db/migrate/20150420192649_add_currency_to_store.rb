class AddCurrencyToStore < ActiveRecord::Migration
  def change
    add_column  :spree_stores, :currency, :string
  end
end
