class CreateSchedulings < ActiveRecord::Migration[5.0]
  def change
    create_table :schedulings do |t|
      t.datetime :date_time
      t.references :client, foreign_key: true
      t.text :observations
      t.integer :status

      t.timestamps
    end
  end
end
