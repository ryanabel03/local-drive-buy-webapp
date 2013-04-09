class RemoveProfileFieldsFromListings < ActiveRecord::Migration
  def up
    remove_column :listings, :address_one
    remove_column :listings, :address_two
    remove_column :listings, :city
    remove_column :listings, :state
    remove_column :listings, :zip
  end

  def down
    add_column :listings, :zip, :integer
    add_column :listings, :state, :string
    add_column :listings, :city, :string
    add_column :listings, :address_two, :string
    add_column :listings, :address_one, :string
  end
end
