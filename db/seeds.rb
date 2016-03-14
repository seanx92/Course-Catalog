# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

records = JSON.parse(File.read('db/subject.json'))
records.each do |record|
  a = Subject.new
  a.identity = record['id']
  a.name = record['name']
  a.abbreviation = record['abbreviation']
  a.save
end

records = JSON.parse(File.read('db/course.json'))
records.each do |record|
  a = Course.new
  a.code = record['code']
  a.name = record['name']
  a.credits = record['credits']
  a.independent_study = record['independent_study']
  a.save
end

records = JSON.parse(File.read('db/instructor.json'))
records.each do |record|
  a = Instructor.new
  a.identity = record['id']
  a.email = record['email']
  a.first = record['first']
  a.middle = record['middle']
  a.last = record['last']
  a.save
end
