# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

50.times do 
  name = Faker::Name.name
  school_email = "#{name}@#{Faker::University.name}.com".delete " "
  major = Faker::Educator.subject
  Student.create(name: name, school_email: school_email, major: major)
end

25.times do 
  name = Faker::Name.name 
  school_email = "#{name}@#{Faker::University.name}.com".delete " "
  department = Faker::Educator.subject 
  Professor.create(name: name, school_email: school_email, department: department)
end

50.times do 
  course_name = Faker::Educator.course_name
  Course.create(course_name: course_name)
end