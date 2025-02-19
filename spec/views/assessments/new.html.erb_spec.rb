require 'rails_helper'

RSpec.describe "assessments/new", type: :view do
  before(:each) do
    assign(:assessment, Assessment.new(
      patient: nil,
      edema: false,
      labor_duration: 1,
      contraction_pattern: "MyString",
      cervical_dilation: "9.99",
      uterine_tone: "MyString",
      fetal_head_position: "MyString"
    ))
  end

  it "renders new assessment form" do
    render

    assert_select "form[action=?][method=?]", assessments_path, "post" do

      assert_select "input[name=?]", "assessment[patient_id]"

      assert_select "input[name=?]", "assessment[edema]"

      assert_select "input[name=?]", "assessment[labor_duration]"

      assert_select "input[name=?]", "assessment[contraction_pattern]"

      assert_select "input[name=?]", "assessment[cervical_dilation]"

      assert_select "input[name=?]", "assessment[uterine_tone]"

      assert_select "input[name=?]", "assessment[fetal_head_position]"
    end
  end
end
