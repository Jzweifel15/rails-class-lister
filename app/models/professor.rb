class Professor < ApplicationRecord
  has_many :courses
  has_many :students, through: :courses

  has_secure_password

  #validates :name, :school_email, :password, presence: true
end