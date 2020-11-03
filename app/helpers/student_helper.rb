module StudentHelper
=begin
  def student_courses(student)
    courses = []
    student.list.course_id.split(/\W/).each do |id|
      if id != ""
        course = Course.find_by(id: id)
        courses.push(course)
      end
    end
    courses
  end
=end
end