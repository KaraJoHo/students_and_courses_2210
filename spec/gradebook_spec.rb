require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  it 'has an instructor' do
    gradebook = Gradebook.new("Mr. Teacher")

    expect(gradebook.instructor).to eq("Mr. Teacher")
  end

  describe '#course_list' do
    it 'lists the courses in the gradebook' do
      gradebook = Gradebook.new("Mr. Teacher")
      course1 = Course.new("Calculus", 2)
      course2 = Course.new("Algebra", 2)
      gradebook.add_course(course1)
      gradebook.add_course(course2)

      expect(gradebook.course_list).to eq([course1, course2])
    end
  end

  describe '#students_in_course' do
    it 'lists all the students in the course' do
      gradebook = Gradebook.new("Mr. Teacher")
      course1 = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Sam", age: 24})
      course1.enroll(student1)
      course1.enroll(student2)

      expect(gradebook.students_in_course(course1)).to eq([student1, student2])

      course2 = Course.new("Algebra", 2)
      student3 = Student.new({name: "Joe", age: 20})
      student4 = Student.new({name: "Dave", age: 26})
      course2.enroll(student3)
      course2.enroll(student4)

      expect(gradebook.students_in_course(course2)).to eq([student3, student4])
    end
  end

  describe '#failing_students' do
    it 'checks to see which students average score and returns true if it is 59% or under'do
    gradebook = Gradebook.new("Mr. Teacher")
    course1 = Course.new("Calculus", 2)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Sam", age: 24})
    student1.log_score(89)
    student1.log_score(78)
    student2.log_score(12)
    student2.log_score(34)

    expect(gradebook.failing_students(student1)).to eq(false)
    expect(gradebook.failing_students(student2)).to eq(true)
    end
  end
end
