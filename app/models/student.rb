class Student < ApplicationRecord
  has_many :classes
  has_many :professors, through: :classes
  has_secure_password
end