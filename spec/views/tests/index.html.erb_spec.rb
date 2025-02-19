require 'rails_helper'

RSpec.describe "tests/index", type: :view do
  before(:each) do
    assign(:tests, [
      Test.create!(
        patient: nil,
        test_type: "Test Type",
        value: "9.99",
        unit: "Unit"
      ),
      Test.create!(
        patient: nil,
        test_type: "Test Type",
        value: "9.99",
        unit: "Unit"
      )
    ])
  end

  it "renders a list of tests" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Test Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Unit".to_s), count: 2
  end
end
