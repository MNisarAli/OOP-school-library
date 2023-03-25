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

  def list_books
    puts 'List of Books:'
    @books.each do |book|
      puts "Title: #{book.title} | Author: #{book.author}"
    end
  end

  def list_people
    puts 'List of People:'
    @people.each do |person|
      puts "ID: #{person.id} | Name: #{person.name} | Age: #{person.age}"
    end
  end

  def create_person
    puts 'What type of person would you like to create? (1) Teacher (2) Student'
    type = gets.chomp.to_i
    puts 'Enter the person name:'
    name = gets.chomp
    puts 'Enter the person age:'
    age = gets.chomp.to_i

    case type
    when 1
      puts 'Enter the teacher specialization:'
      specialization = gets.chomp
      person = Teacher.new(specialization, age, name: name)
    when 2
      puts 'Enter the student classroom:'
      classroom = gets.chomp
      person = Student.new(Classroom.new(classroom), age, name: name)
    end

    @people << person
    puts 'Person created successfully!'
  end
end
