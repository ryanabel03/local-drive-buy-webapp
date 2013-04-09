class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :address_one
      t.string :address_two
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
