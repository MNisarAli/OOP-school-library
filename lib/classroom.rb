require_relative 'student'

class Classroom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students = []
    @name = ''
  end

  def to_s
    @label.to_s
  end

  def add_student(student)
    @students << student unless @students.include?(student)
    student.classroom = self
  end
end
