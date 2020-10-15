class List < ApplicationRecord
  belongs_to :student
  has_many :courses

  def validate_course_ids
    course_id.split(/\W/).empty?
  end

end