class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.belongs_to :student
      t.belongs_to :professor
    end
  end
end
