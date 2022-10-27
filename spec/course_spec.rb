require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'has a course name and capacity' do
    course = Course.new("Calculus", 2)

    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
    expect(course.students).to eq([])
  end

  describe '#full?' do
    it 'returns false if the class is not full' do
      course = Course.new("Calculus", 2)

      expect(course.full?).to eq(false)
    end
  end

end