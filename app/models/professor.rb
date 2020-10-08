class Professor < ApplicationRecord
  has_many :courses
  has_many :professors, through: :courses
  has_secure_password
end