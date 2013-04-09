class AddCategoriesToListings < ActiveRecord::Migration
  def change
    add_column :listings, :category, :string
    add_column :listings, :sub_category, :string
  end
end
