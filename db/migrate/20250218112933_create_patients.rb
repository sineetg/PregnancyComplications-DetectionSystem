class CreatePatients < ActiveRecord::Migration[8.0]
  def change
    create_table :patients do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.date :dob, null: false
      t.text :medical_history

      t.timestamps
    end
  end
end
