class Assessment < ApplicationRecord
  belongs_to :patient
  
  enum edema: { none: 0, mild: 1, moderate: 2, severe: 3, extreme: 4 }
  enum uterine_tone: { normal: 0, hypertonic: 1, hypotonic: 2, flaccid: 3 }

  validates :labor_duration, presence: true
  # validates :edema, :uterine_tone, presence: true
end
