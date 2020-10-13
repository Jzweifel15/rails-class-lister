class Course < ApplicationRecord
  has_many :students, through: :list
  #belongs_to :list
  #has_many :professors
end