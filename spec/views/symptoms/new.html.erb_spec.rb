require 'rails_helper'

RSpec.describe "symptoms/new", type: :view do
  before(:each) do
    assign(:symptom, Symptom.new(
      patient: nil,
      name: "MyString",
      severity: 1,
      description: "MyText"
    ))
  end

  it "renders new symptom form" do
    render

    assert_select "form[action=?][method=?]", symptoms_path, "post" do

      assert_select "input[name=?]", "symptom[patient_id]"

      assert_select "input[name=?]", "symptom[name]"

      assert_select "input[name=?]", "symptom[severity]"

      assert_select "textarea[name=?]", "symptom[description]"
    end
  end
end
