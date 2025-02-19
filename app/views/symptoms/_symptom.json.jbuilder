json.extract! symptom, :id, :patient_id, :name, :severity, :description, :reported_at, :created_at, :updated_at
json.url symptom_url(symptom, format: :json)
