class Symptom < ApplicationRecord
  belongs_to :patient

  enum severity: { mild: 0, moderate: 1, severe: 2, critical: 3}

  validates :name, presence: true, uniqueness: { scope: :patient_id }
  validates :severity, presence: true, inclusion: { in: %w[mild moderate severe critical] }
  validates :reported_at, presence: true
end
