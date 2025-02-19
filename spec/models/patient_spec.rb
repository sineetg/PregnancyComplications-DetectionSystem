require 'rails_helper'

RSpec.describe Patient, type: :model do
  it "is valid with valid attributes" do
    patient = Patient.new(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    expect(patient).to be_valid
  end

  it "is not valid without a first_name" do
    patient = Patient.new(last_name: "Doe", dob: "1990-01-01")
    expect(patient).not_to be_valid
  end

  it "is not valid without a last_name" do
    patient = Patient.new(first_name: "John", dob: "1990-01-01")
    expect(patient).not_to be_valid
  end

  it "is not valid without a dob" do
    patient = Patient.new(first_name: "John", last_name: "Doe")
    expect(patient).not_to be_valid
  end
end
