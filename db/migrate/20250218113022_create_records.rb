class CreateRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :records do |t|
      t.references :patient, null: false, foreign_key: true
      t.integer :heart_rate, null: false
      t.integer :blood_pressure_systolic, null: false
      t.integer :blood_pressure_diastolic, null: false
      t.decimal :oxygen_saturation, null: false, precision: 5, scale: 2
      t.decimal :weight, null: false, precision: 5, scale: 2
      t.datetime :recorded_at, null: false

      t.timestamps
    end
  end
end
