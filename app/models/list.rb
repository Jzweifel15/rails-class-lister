class List < ApplicationRecord
  belongs_to :student
  has_many :courses

  #validates :courses_id, presence: true

end