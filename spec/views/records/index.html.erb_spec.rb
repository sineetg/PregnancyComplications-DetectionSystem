require 'rails_helper'

RSpec.describe "records/index", type: :view do
  before(:each) do
    assign(:records, [
      Record.create!(
        patient: nil,
        heart_rate: 2,
        blood_pressure_systolic: 3,
        blood_pressure_diastolic: 4,
        oxygen_saturation: "9.99",
        weight: "9.99"
      ),
      Record.create!(
        patient: nil,
        heart_rate: 2,
        blood_pressure_systolic: 3,
        blood_pressure_diastolic: 4,
        oxygen_saturation: "9.99",
        weight: "9.99"
      )
    ])
  end

  it "renders a list of records" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
  end
end
