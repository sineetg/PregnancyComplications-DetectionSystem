FactoryBot.define do
  factory :patient do
    first_name { "MyString" }
    last_name { "MyString" }
    dob { "2025-02-18" }
    medical_history { "MyText" }
  end
end
