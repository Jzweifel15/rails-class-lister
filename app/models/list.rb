class List < ApplicationRecord
  has_many :courses
  belongs_to :student

  validates :courses_id, presence: true

end