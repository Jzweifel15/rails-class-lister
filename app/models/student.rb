class Student < ApplicationRecord
  has_one :list
  has_many :courses, through: :lists

  has_secure_password

  #validates :name, :school_email, :password, presence: true
end