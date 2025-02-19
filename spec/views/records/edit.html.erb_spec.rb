require 'rails_helper'

RSpec.describe "records/edit", type: :view do
  let(:record) {
    Record.create!(
      patient: nil,
      heart_rate: 1,
      blood_pressure_systolic: 1,
      blood_pressure_diastolic: 1,
      oxygen_saturation: "9.99",
      weight: "9.99"
    )
  }

  before(:each) do
    assign(:record, record)
  end

  it "renders the edit record form" do
    render

    assert_select "form[action=?][method=?]", record_path(record), "post" do

      assert_select "input[name=?]", "record[patient_id]"

      assert_select "input[name=?]", "record[heart_rate]"

      assert_select "input[name=?]", "record[blood_pressure_systolic]"

      assert_select "input[name=?]", "record[blood_pressure_diastolic]"

      assert_select "input[name=?]", "record[oxygen_saturation]"

      assert_select "input[name=?]", "record[weight]"
    end
  end
end
