require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'has a course name and capacity' do
    course = Course.new("Calculus", 2)

    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq(2)
    expect(course.students).to eq([])
  end

  

end
