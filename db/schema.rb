# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_02_18_113123) do
  create_table "assessments", force: :cascade do |t|
    t.integer "patient_id", null: false
    t.boolean "edema"
    t.integer "labor_duration"
    t.string "contraction_pattern"
    t.decimal "cervical_dilation"
    t.string "uterine_tone"
    t.string "fetal_head_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_assessments_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.text "medical_history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer "patient_id", null: false
    t.integer "heart_rate"
    t.integer "blood_pressure_systolic"
    t.integer "blood_pressure_diastolic"
    t.decimal "oxygen_saturation"
    t.decimal "weight"
    t.datetime "recorded_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_records_on_patient_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.integer "patient_id", null: false
    t.string "name"
    t.integer "severity"
    t.text "description"
    t.datetime "reported_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_symptoms_on_patient_id"
  end

  create_table "tests", force: :cascade do |t|
    t.integer "patient_id", null: false
    t.string "test_type"
    t.decimal "value"
    t.string "unit"
    t.datetime "test_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_tests_on_patient_id"
  end

  add_foreign_key "assessments", "patients"
  add_foreign_key "records", "patients"
  add_foreign_key "symptoms", "patients"
  add_foreign_key "tests", "patients"
end
