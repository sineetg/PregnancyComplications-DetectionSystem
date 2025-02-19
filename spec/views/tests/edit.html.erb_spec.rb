require 'rails_helper'

RSpec.describe "tests/edit", type: :view do
  let(:test) {
    Test.create!(
      patient: nil,
      test_type: "MyString",
      value: "9.99",
      unit: "MyString"
    )
  }

  before(:each) do
    assign(:test, test)
  end

  it "renders the edit test form" do
    render

    assert_select "form[action=?][method=?]", test_path(test), "post" do

      assert_select "input[name=?]", "test[patient_id]"

      assert_select "input[name=?]", "test[test_type]"

      assert_select "input[name=?]", "test[value]"

      assert_select "input[name=?]", "test[unit]"
    end
  end
end
