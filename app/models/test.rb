class Test < ApplicationRecord
  belongs_to :patient

  validates :test_type, :value, :unit, :test_date, presence: true
end
