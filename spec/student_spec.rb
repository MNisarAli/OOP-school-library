require 'student'
require 'book'
require 'rental'
require 'classroom'
describe 'testing student' do
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
end
