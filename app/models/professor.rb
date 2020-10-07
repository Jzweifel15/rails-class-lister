class Professor < ApplicationRecord
  has_many :classes
  has_many :students, through: :classes
  has_secure_password
end