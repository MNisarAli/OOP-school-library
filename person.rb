class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, parent_permission = true, name = "Unknown")
    @id = rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end
end