class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :string
    add_column :users, :address_one, :string
    add_column :users, :address_two, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :zip, :integer
  end
end
