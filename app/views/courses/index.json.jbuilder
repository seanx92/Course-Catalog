json.array!(@courses) do |course|
  json.extract! course, :name, :code, :independent_study
  json.url course_url(course, format: :json)
end
