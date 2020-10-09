class Student < ApplicationRecord
  has_many :courses
  has_many :professors, through: :courses

  has_secure_password

  #validates :name, :school_email, :password, presence: true
end