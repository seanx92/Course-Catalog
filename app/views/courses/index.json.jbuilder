json.array!(@courses) do |course|
  json.extract! course, :id, :name, :code, :credits, :independent_study
  json.url course_url(course, format: :json)
end
