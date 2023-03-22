require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(age, parent_permission = true, name = "Unknown", classroom)
    super(age, parent_permission, name)
    @classroom = classroom
  end
end
