require 'rails_helper'

RSpec.describe "symptoms/show", type: :view do
  before(:each) do
    assign(:symptom, Symptom.create!(
      patient: nil,
      name: "Name",
      severity: 2,
      description: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
