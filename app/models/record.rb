class Record < ApplicationRecord
  belongs_to :patient

  validates :heartrate, :blood_pressure_systolic, :blood_pressure_diastolic, :recorded_at, presence: true
  validates :oxygen_saturation, :weight, presence: true
end
