class Student < ApplicationRecord
  has_one :list
  has_many :courses, through: :list
  has_many :professors, through: :courses

  has_secure_password

  #validates :name, :school_email, :password, presence: true
end