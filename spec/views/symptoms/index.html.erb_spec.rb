require 'rails_helper'

RSpec.describe "symptoms/index", type: :view do
  before(:each) do
    assign(:symptoms, [
      Symptom.create!(
        patient: nil,
        name: "Name",
        severity: 2,
        description: "MyText"
      ),
      Symptom.create!(
        patient: nil,
        name: "Name",
        severity: 2,
        description: "MyText"
      )
    ])
  end

  it "renders a list of symptoms" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
