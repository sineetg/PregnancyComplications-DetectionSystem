FactoryBot.define do
  factory :symptom do
    patient { nil }
    name { "MyString" }
    severity { 1 }
    description { "MyText" }
    reported_at { "2025-02-18 14:30:04" }
  end
end
