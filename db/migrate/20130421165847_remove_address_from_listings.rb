class RemoveAddressFromListings < ActiveRecord::Migration
  def up
    remove_column :listings, :address
  end

  def down
    add_column :listings, :address
  end
end
