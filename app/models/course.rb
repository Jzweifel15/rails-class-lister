class Course < ApplicationRecord
  has_many :lists
  has_many :students, through: :lists

  validates :name, presence: true

  def self.search(search)
    if search 
      course = Course.find_by(name: search)
      if course
        self.where(name: course.name)
      else
        Course.all
      end
    else
      Course.all
    end
  end
  
end