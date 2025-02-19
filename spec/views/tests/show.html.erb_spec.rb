require 'rails_helper'

RSpec.describe "tests/show", type: :view do
  before(:each) do
    assign(:test, Test.create!(
      patient: nil,
      test_type: "Test Type",
      value: "9.99",
      unit: "Unit"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Test Type/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Unit/)
  end
end
