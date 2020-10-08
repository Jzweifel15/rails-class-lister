class Course < ApplicationRecord
  belongs_to :students
  belongs_to :professors
end