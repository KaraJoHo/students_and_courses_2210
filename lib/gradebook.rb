class Gradebook
  attr_reader :instructor, :course_list
  def initialize(instructor)
    @instructor = instructor
    @course_list = []
  end

  def add_course(course)
    @course_list << course
  end

  def students_in_course(course)
    student_list = course.students
  end

  def failing_students(student)
    if student.grade <= 59
      true
    else
      false
    end
  end
end
