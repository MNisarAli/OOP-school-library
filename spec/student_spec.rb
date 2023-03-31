# require 'student'
# require 'person'

# describe Student do
#   student = Student.new('Classroom 1', 17, 'John')

#   describe '#new' do
#     it 'returns a new Student object' do
#       expect(student).to be_an_instance_of Student
#     end
#   end

#   describe '#play_hooky' do
#     it 'returns the correct string' do
#       expect(student.play_hooky).to eq '¯(ツ)/¯'
#     end
#   end

#   describe '#name' do
#     it 'returns the correct name' do
#       expect(student.name).to eq 'John'
#     end
#   end

#   describe '#age' do
#     it 'returns the correct age' do
#       expect(student.age).to eq 17
#     end
#   end

#   describe '#classroom' do
#     it 'returns the correct classroom' do
#       expect(student.classroom).to eq 'Classroom 1'
#     end
#   end
# end

require 'student'
require 'person'

# describe 'testing student' do
#   context 'When testing the Student class' do
#     it 'should create a student properly' do
#       student = Student.new('classroom 1', 36, 'Amaka')
#       expect(student.class).to eq Student
#     end

#     it 'should add a classroom to student' do
#       student = Student.new('classroom 1', 36)
#       classroom = Classroom.new('Software')
#       student.classroom = classroom
#       expect(student.classroom.label).to eq 'Software'
#     end

#     it 'returns the correct string' do
#       student = Student.new('classroom 1', 36, 'Amaka')
#       expect(student.play_hooky).to eq '¯(ツ)/¯'
#     end
#   end
# end

