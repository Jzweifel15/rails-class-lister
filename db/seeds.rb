# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

50.times do 
  student_name = Faker::Name.name 
  student_email = "#{student_name}@#{Faker::Educator.university}.com".delete " "
  student_major = Faker::Educator.subject
  student_password = Faker::Number.number(digits: 10)
  Student.create(name: student_name, school_email: student_email, major: student_major)
end

25.times do 
  professor_name = Faker::Name.name 
  professor_email = "#{professor_name}@#{Faker::Educator.university}.com".delete " "
  professor_department = Faker::Educator.subject
  professor_password = Faker::Number.number(digits: 10)
  Professor.create(name: professor_name, school_email: professor_email, department: professor_department)
end

30.times do 
  name = Faker::Educator.course_name
  Course.create(course_name: name)
end