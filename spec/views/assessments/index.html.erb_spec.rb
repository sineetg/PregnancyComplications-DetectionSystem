require 'rails_helper'

RSpec.describe "assessments/index", type: :view do
  before(:each) do
    assign(:assessments, [
      Assessment.create!(
        patient: nil,
        edema: false,
        labor_duration: 2,
        contraction_pattern: "Contraction Pattern",
        cervical_dilation: "9.99",
        uterine_tone: "Uterine Tone",
        fetal_head_position: "Fetal Head Position"
      ),
      Assessment.create!(
        patient: nil,
        edema: false,
        labor_duration: 2,
        contraction_pattern: "Contraction Pattern",
        cervical_dilation: "9.99",
        uterine_tone: "Uterine Tone",
        fetal_head_position: "Fetal Head Position"
      )
    ])
  end

  it "renders a list of assessments" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Contraction Pattern".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("9.99".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Uterine Tone".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Fetal Head Position".to_s), count: 2
  end
end
