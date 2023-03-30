require_relative '../lib/book'
require_relative '../lib/person'
require_relative '../lib/teacher'
require_relative '../lib/student'
require_relative '../lib/classroom'
require_relative '../lib/rental'
require_relative 'preserve'

class App
  def initialize
    @people = read_persons
    @books = []
    @rentals = []
  end

  def list_books
    puts 'List of Books:'
    @books.each { |book| puts "Title: #{book.title} | Author: #{book.author}" }
  end

  def list_people
    puts 'List of People:'
    @people.each { |person| display_person(person) }
  end

  def display_person(person)
    if person.instance_of?(Teacher)
      puts "[#{person.class}] ID: #{person.id} | Name: #{person.name} | Age: #{person.age} | " \
           "Specialization: #{person.specialization}"
    else
      puts "[#{person.class}] ID: #{person.id} | Name: #{person.name} | Age: #{person.age} | Class: #{person.classroom}"
    end
  end

  def create_person
    puts 'What type of person would you like to create? (1) Teacher (2) Student'
    type = gets.chomp.to_i

    case type
    when 1
      create_teacher
    when 2
      create_student
    else
      puts 'Invalid input, Please enter a valid number!'
    end

    save_persons
  end

  def create_teacher
    puts 'Enter the teacher name:'
    name = gets.chomp
    puts 'Enter the teacher age:'
    age = gets.chomp.to_i
    puts 'Enter the teacher specialization:'
    specialization = gets.chomp
    person = Teacher.new(name, age, specialization)
    @people << person
    puts 'Teacher created successfully!'
  end

  def create_student
    puts 'Enter the student name:'
    name = gets.chomp
    puts 'Enter the student age:'
    age = gets.chomp.to_i
    puts 'Enter the student classroom:'
    classroom = gets.chomp
    person = Student.new(name, age, Classroom.new(classroom))
    @people << person
    puts 'Student created successfully!'
  end

  def create_book
    puts 'Enter the book title:'
    title = gets.chomp
    puts 'Enter the book author:'
    author = gets.chomp
    book = Book.new(title, author)
    @books << book
    puts 'Book created successfully!'
  end

  def create_rental
    puts 'Enter the person id:'
    person_id = gets.chomp.to_i
    person = @people.find { |p| p.id == person_id }
    if person.nil?
      puts 'Person not found!'
      return
    end

    puts 'Enter the book title:'
    title = gets.chomp
    book = @books.find { |b| b.title == title }
    if book.nil?
      puts 'Book not found!'
      return
    end

    puts 'Enter the rental date (YYYY-MM-DD):'
    date = gets.chomp
    rental = Rental.new(date, book, person)
    @rentals << rental
    puts 'Rental created successfully!'
  end

  def list_rentals
    puts 'Enter the person id:'
    person_id = gets.chomp.to_i
    person = @people.find { |p| p.id == person_id }
    if person.nil?
      puts 'Person not found!'
      return
    end

    puts "List of Rentals for #{person.name}:"
    person.rentals.each do |rental|
      puts "Book: #{rental.book.title} | Date: #{rental.date}"
    end
  end
end
