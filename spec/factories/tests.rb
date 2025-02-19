FactoryBot.define do
  factory :test do
    patient { nil }
    test_type { "MyString" }
    value { "9.99" }
    unit { "MyString" }
    test_date { "2025-02-18 14:31:24" }
  end
end
