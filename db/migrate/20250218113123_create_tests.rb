class CreateTests < ActiveRecord::Migration[8.0]
  def change
    create_table :tests do |t|
      t.references :patient, null: false, foreign_key: true
      t.string :test_type, null: false
      t.decimal :value, null: false, precision: 10, scale: 2
      t.string :unit, null: false
      t.datetime :test_date, null: false

      t.timestamps
    end
  end
end
