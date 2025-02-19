require 'rails_helper'

RSpec.describe "records/new", type: :view do
  before(:each) do
    assign(:record, Record.new(
      patient: nil,
      heart_rate: 1,
      blood_pressure_systolic: 1,
      blood_pressure_diastolic: 1,
      oxygen_saturation: "9.99",
      weight: "9.99"
    ))
  end

  it "renders new record form" do
    render

    assert_select "form[action=?][method=?]", records_path, "post" do

      assert_select "input[name=?]", "record[patient_id]"

      assert_select "input[name=?]", "record[heart_rate]"

      assert_select "input[name=?]", "record[blood_pressure_systolic]"

      assert_select "input[name=?]", "record[blood_pressure_diastolic]"

      assert_select "input[name=?]", "record[oxygen_saturation]"

      assert_select "input[name=?]", "record[weight]"
    end
  end
end
