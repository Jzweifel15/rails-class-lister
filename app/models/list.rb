class List < ApplicationRecord
  has_many :courses
  belongs_to :student
end