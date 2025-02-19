require 'rails_helper'

RSpec.describe Record, type: :model do
  it "is valid with valid attributes" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    record = Record.new(patient: patient, heart_rate: 80, blood_pressure_systolic: 120, blood_pressure_diastolic: 80, oxygen_saturation: 98.5, weight: 70.0, recorded_at: DateTime.now)
    expect(record).to be_valid
  end

  it "is not valid without a patient" do
    record = Record.new(heart_rate: 80, blood_pressure_systolic: 120, blood_pressure_diastolic: 80, oxygen_saturation: 98.5, weight: 70.0, recorded_at: DateTime.now)
    expect(record).not_to be_valid
  end

  it "is not valid without heartrate" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    record = Record.new(patient: patient, blood_pressure_systolic: 120, blood_pressure_diastolic: 80, oxygen_saturation: 98.5, weight: 70.0, recorded_at: DateTime.now)
    expect(record).not_to be_valid
  end

  it "is not valid without blood_pressure_systolic" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    record = Record.new(patient: patient, heart_rate: 80, blood_pressure_diastolic: 80, oxygen_saturation: 98.5, weight: 70.0, recorded_at: DateTime.now)
    expect(record).not_to be_valid
  end

  it "is not valid without blood_pressure_diastolic" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    record = Record.new(patient: patient, heart_rate: 80, blood_pressure_systolic: 120, oxygen_saturation: 98.5, weight: 70.0, recorded_at: DateTime.now)
    expect(record).not_to be_valid
  end

  it "is not valid without oxygen_saturation" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    record = Record.new(patient: patient, heart_rate: 80, blood_pressure_systolic: 120, blood_pressure_diastolic: 80, weight: 70.0, recorded_at: DateTime.now)
    expect(record).not_to be_valid
  end

  it "is not valid without weight" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    record = Record.new(patient: patient, heart_rate: 80, blood_pressure_systolic: 120, blood_pressure_diastolic: 80, oxygen_saturation: 98.5, recorded_at: DateTime.now)
    expect(record).not_to be_valid
  end

  it "is not valid without recorded_at" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    record = Record.new(patient: patient, heart_rate: 80, blood_pressure_systolic: 120, blood_pressure_diastolic: 80, oxygen_saturation: 98.5, weight: 70.0)
    expect(record).not_to be_valid
  end
end
