class Course < ApplicationRecord
  has_many :students, through: :list
end