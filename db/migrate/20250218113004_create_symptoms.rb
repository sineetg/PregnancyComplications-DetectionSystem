class CreateSymptoms < ActiveRecord::Migration[8.0]
  def change
    create_table :symptoms do |t|
      t.references :patient, null: false, foreign_key: true
      t.string :name, null: false
      t.integer :severity, null: false, default: 0 # Use enum (mild, moderate, severe)
      t.text :description
      t.datetime :reported_at, null: false

      t.timestamps
    end
  end
end
