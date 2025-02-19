require 'rails_helper'

RSpec.describe Symptom, type: :model do
  it "is valid with valid attributes" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    symptom = Symptom.new(patient: patient, name: "Headache", severity: 3, description: "Severe headache", reported_at: DateTime.now)
    expect(symptom).to be_valid
  end

  it "is not valid without a patient" do
    symptom = Symptom.new(name: "Headache", severity: 3, description: "Severe headache", reported_at: DateTime.now)
    expect(symptom).not_to be_valid
  end

  it "is not valid without a name" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    symptom = Symptom.new(patient: patient, severity: 3, description: "Severe headache", reported_at: DateTime.now)
    expect(symptom).not_to be_valid
  end

  it "is not valid without a severity" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    symptom = Symptom.new(patient: patient, name: "Headache", description: "Severe headache", reported_at: DateTime.now)
    expect(symptom).not_to be_valid
  end

  it "is not valid without a reported_at" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    symptom = Symptom.new(patient: patient, name: "Headache", severity: 3, description: "Severe headache")
    expect(symptom).not_to be_valid
  end
end
