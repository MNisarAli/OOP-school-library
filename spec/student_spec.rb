require 'student'
require 'classroom'

describe Student do
  context 'When testing the Student class' do
    it 'should properly create student' do
      student = Student.new('Nisar', 30, true)
      expect(student.class).to eq Student
    end

    it 'should add a classroom to student' do
      student = Student.new('Amaka', 22, true)
      classroom = Classroom.new('Computer')
      student.classroom = classroom
      expect(student.classroom.label).to eq 'Computer'
    end
  end

  context 'When testing play_hooky' do
    it 'should return the correct string' do
      student = Student.new(Classroom.new('Math'), 16, 'John Doe')
      expect(student.play_hooky).to eq('¯\(ツ)/¯')
    end
  end
end
