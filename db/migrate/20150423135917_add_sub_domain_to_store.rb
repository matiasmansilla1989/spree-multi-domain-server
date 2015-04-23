class AddSubDomainToStore < ActiveRecord::Migration
  def change
    add_column  :spree_stores, :subdomain, :string
  end
end
