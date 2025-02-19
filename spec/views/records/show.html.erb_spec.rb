require 'rails_helper'

RSpec.describe "records/show", type: :view do
  before(:each) do
    assign(:record, Record.create!(
      patient: nil,
      heart_rate: 2,
      blood_pressure_systolic: 3,
      blood_pressure_diastolic: 4,
      oxygen_saturation: "9.99",
      weight: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
