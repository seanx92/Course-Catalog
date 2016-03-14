json.array!(@subjects) do |subject|
  json.extract! subject, :id, :identity, :name, :abbreviation
  json.url subject_url(subject, format: :json)
end
