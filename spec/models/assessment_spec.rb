require 'rails_helper'

RSpec.describe Assessment, type: :model do
  it "is valid with valid attributes" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    assessment = Assessment.new(patient: patient, edema: true, labour_duration: 10)
    expect(assessment).to be_valid
  end

  it "is not valid without a patient" do
    assessment = Assessment.new(edema: true, labour_duration: 10)
    expect(assessment).not_to be_valid
  end

  it "is not valid without a labour_duration" do
    patient = Patient.create(first_name: "John", last_name: "Doe", dob: "1990-01-01")
    assessment = Assessment.new(patient: patient, edema: true)
    expect(assessment).not_to be_valid
  end
end
