require 'teacher'

describe Teacher do
  context 'When testing the Teacher class' do
    teacher = Teacher.new('Mathematics', 30, 'Jane Smith')

    it 'should confirm the name of the teacher' do
      expect(teacher.name).to eq 'Jane Smith'
    end

    it 'should confirm the age of the teacher' do
      expect(teacher.age).to eq 30
    end

    it 'should return parent permission for teacher' do
      expect(teacher.specialization).to eq 'Mathematics'
    end

    it 'should return if a teacher can use services = true' do
      expect(teacher.can_use_services?).to eq true
    end
  end
end
