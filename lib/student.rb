require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom, age, parent_permission: true, name: 'Unknown')
    super(age, parent_permission: parent_permission, name: name)
    @classroom = classroom.is_a?(Classroom) ? classroom : Classroom.new(classroom)
    @classroom.add_student(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
