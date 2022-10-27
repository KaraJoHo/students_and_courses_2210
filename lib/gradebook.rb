class Gradebook
  attr_reader :instructor, :course_list
  def initialize(instructor)
    @instructor = instructor
    @course_list = []
  end

  def add_course(course)
    @course_list << course 
  end
end
