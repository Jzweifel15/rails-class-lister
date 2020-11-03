class Student < ApplicationRecord
  has_many :lists
  has_many :courses, through: :lists

  has_secure_password

  validates :name, :major, :email, :password, presence: true 

end