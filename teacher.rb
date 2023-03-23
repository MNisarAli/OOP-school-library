require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, parent_permission = true, name = "Unknown", specialization)
    super(age, parent_permission, name)
    @specialization = specialization
  end
end
