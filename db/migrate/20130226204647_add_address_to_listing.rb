class AddAddressToListing < ActiveRecord::Migration
  def change
    add_column :listings, :address_one, :string
    add_column :listings, :address_two, :string
  end
end
