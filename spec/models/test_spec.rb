require 'rails_helper'

RSpec.describe Test, type: :model do
  it "is valid with valid attributes" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    test = Test.new(patient: patient, test_type: "Blood Test", value: 5.6, unit: "g/dL", test_date: DateTime.now)
    expect(test).to be_valid
  end

  it "is not valid without a patient" do
    test = Test.new(test_type: "Blood Test", value: 5.6, unit: "g/dL", test_date: DateTime.now)
    expect(test).not_to be_valid
  end

  it "is not valid without a test_type" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    test = Test.new(patient: patient, value: 5.6, unit: "g/dL", test_date: DateTime.now)
    expect(test).not_to be_valid
  end

  it "is not valid without a value" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    test = Test.new(patient: patient, test_type: "Blood Test", unit: "g/dL", test_date: DateTime.now)
    expect(test).not_to be_valid
  end

  it "is not valid without a unit" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    test = Test.new(patient: patient, test_type: "Blood Test", value: 5.6, test_date: DateTime.now)
    expect(test).not_to be_valid
  end

  it "is not valid without a test_date" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    test = Test.new(patient: patient, test_type: "Blood Test", value: 5.6, unit: "g/dL")
    expect(test).not_to be_valid
  end
end
