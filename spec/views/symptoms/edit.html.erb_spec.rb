require 'rails_helper'

RSpec.describe "symptoms/edit", type: :view do
  let(:symptom) {
    Symptom.create!(
      patient: nil,
      name: "MyString",
      severity: 1,
      description: "MyText"
    )
  }

  before(:each) do
    assign(:symptom, symptom)
  end

  it "renders the edit symptom form" do
    render

    assert_select "form[action=?][method=?]", symptom_path(symptom), "post" do

      assert_select "input[name=?]", "symptom[patient_id]"

      assert_select "input[name=?]", "symptom[name]"

      assert_select "input[name=?]", "symptom[severity]"

      assert_select "textarea[name=?]", "symptom[description]"
    end
  end
end
