# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  student_name = Faker::Name.name 
  student_email = "#{student_name}@#{Faker::Educator.university}.com".delete " "
  student_major = Faker::Educator.subject
  student_password = Faker::Number.number(digits: 10)
  Student.create(name: student_name, 
                 school_email: student_email.downcase, 
                 major: student_major, 
                 password_digest: student_password)
end            

10.times do
  professor_name = Faker::Name.name 
  professor_email = "#{professor_name}@#{Faker::Educator.university}.com".delete " "
  professor_department = Faker::Educator.subject
  professor_password = Faker::Number.number(digits: 10)
  Professor.create(name: professor_name, 
                   school_email: professor_email.downcase,              
                   department: professor_department,
                   password_digest: professor_password)
end

25.times do                 
  name = Faker::Educator.course_name
  desc = Faker::Lorem.paragraph_by_chars
  Course.create!(course_name: name, description: desc)
end
