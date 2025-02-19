FactoryBot.define do
  factory :assessment do
    patient { nil }
    edema { false }
    labor_duration { 1 }
    contraction_pattern { "MyString" }
    cervical_dilation { "9.99" }
    uterine_tone { "MyString" }
    fetal_head_position { "MyString" }
  end
end
