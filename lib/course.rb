class Course
  attr_reader :name, :capacity, :students
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def full?
    if @students.count == 0 
      false
    else
      true
    end
  end

  def enroll(student_object)
    @students << student_object
  end
end
