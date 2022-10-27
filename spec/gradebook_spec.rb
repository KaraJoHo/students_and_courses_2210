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
end
