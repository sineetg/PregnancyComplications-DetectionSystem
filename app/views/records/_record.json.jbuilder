json.extract! record, :id, :patient_id, :heart_rate, :blood_pressure_systolic, :blood_pressure_diastolic, :oxygen_saturation, :weight, :recorded_at, :created_at, :updated_at
json.url record_url(record, format: :json)
