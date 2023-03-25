require_relative 'book'
require_relative 'person'
require_relative 'teacher'
require_relative 'student'
require_relative 'classroom'
require_relative 'rental'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end
end
