class CreateSchedulingServices < ActiveRecord::Migration[5.0]
  def change
    create_table :scheduling_services do |t|
      t.references :scheduling, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
