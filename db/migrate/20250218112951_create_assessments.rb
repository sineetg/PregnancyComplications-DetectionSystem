class CreateAssessments < ActiveRecord::Migration[8.0]
  def change
    create_table :assessments do |t|
      t.references :patient, null: false, foreign_key: true
      t.integer :edema, default: 0 # Use enum (mild, moderate, sever, extreme)
      t.integer :labor_duration, null: false
      t.string :contraction_pattern
      t.decimal :cervical_dilation, precision: 5, scale: 2
      t.integer :uterine_tone, default: 0 # Use enum (normal, hypertonic, hypotonic, flaccid)
      t.string :fetal_head_position

      t.timestamps
    end
  end
end
