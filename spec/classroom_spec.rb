require 'classroom'
require 'student'
require 'person'
describe Classroom do
  context 'When testing the Classroom class' do
    it 'should create a Classroom properly' do
      classroom = Classroom.new('Failed Ruby')
      expect(classroom.label).to eq 'Failed Ruby'
    end
    it 'should add a student to the classroom students' do
      classroom = Classroom.new('Failed Ruby')
      student = Student.new('NAME', 36, true)
      classroom.add_student(student)
      expect(classroom.students.length).to eq 1
    end
  end
end
