require 'rails_helper'

RSpec.describe "tests/new", type: :view do
  before(:each) do
    assign(:test, Test.new(
      patient: nil,
      test_type: "MyString",
      value: "9.99",
      unit: "MyString"
    ))
  end

  it "renders new test form" do
    render

    assert_select "form[action=?][method=?]", tests_path, "post" do

      assert_select "input[name=?]", "test[patient_id]"

      assert_select "input[name=?]", "test[test_type]"

      assert_select "input[name=?]", "test[value]"

      assert_select "input[name=?]", "test[unit]"
    end
  end
end
