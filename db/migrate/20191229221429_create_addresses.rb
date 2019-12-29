class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.integer :zip_code
      t.string :address
      t.integer :number
      t.string :district
      t.string :city
      t.string :state
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
