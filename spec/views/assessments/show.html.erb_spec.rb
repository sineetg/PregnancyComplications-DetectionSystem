require 'rails_helper'

RSpec.describe "assessments/show", type: :view do
  before(:each) do
    assign(:assessment, Assessment.create!(
      patient: nil,
      edema: false,
      labor_duration: 2,
      contraction_pattern: "Contraction Pattern",
      cervical_dilation: "9.99",
      uterine_tone: "Uterine Tone",
      fetal_head_position: "Fetal Head Position"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Contraction Pattern/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Uterine Tone/)
    expect(rendered).to match(/Fetal Head Position/)
  end
end
