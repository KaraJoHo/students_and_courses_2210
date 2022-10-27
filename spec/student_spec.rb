require './lib/student'

RSpec.describe Student do
  it 'checks stat student exists' do
  student = Student.new({name: "Morgan", age: 21})

  expect(student).to be_a(Student)
  end
  it ' checks the name of the student' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.name).to eq("Morgan")
  end
  it ' has an empty array for scores' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.scores).to eq([])
  end

  describe '#log_score' do
    it ' takes an argument for score and puts it into the score array' do
      student = Student.new({name: "Morgan", age: 21})
      student.log_score(89)
      student.log_score(78)

      expect(student.scores).to eq([89, 78])
    end
  end
end
