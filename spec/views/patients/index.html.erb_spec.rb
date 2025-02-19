require 'rails_helper'

RSpec.describe "patients/index", type: :view do
  before(:each) do
    assign(:patients, [
      Patient.create!(
        first_name: "First Name",
        last_name: "Last Name",
        medical_history: "MyText"
      ),
      Patient.create!(
        first_name: "First Name",
        last_name: "Last Name",
        medical_history: "MyText"
      )
    ])
  end

  it "renders a list of patients" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
