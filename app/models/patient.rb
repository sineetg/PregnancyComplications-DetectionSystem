class Patient < ApplicationRecord
    has_many :assessments, dependent: :destroy
    has_many :symptoms, dependent: :destroy
    has_many :records, dependent: :destroy
    has_many :tests, dependent: :destroy
  
    validates :first_name, :last_name, presence: true
    validates :dob, presence: true
  end
  