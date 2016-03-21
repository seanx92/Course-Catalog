json.array!(@course_by_subjects) do |course_by_subject|
  json.extract! course_by_subject, :id
  json.url course_by_subject_url(course_by_subject, format: :json)
end
