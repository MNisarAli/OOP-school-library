require 'json'

def save_persons
  File.open('./db/persons.json', 'w') do |file|
    persons = @people.each_with_index.map do |person, index|
      if person.instance_of?(Teacher)
        { class: person.class,
          name: person.name,
          age: person.age,
          specialization: person.specialization,
          index: index }
      else
        { class: person.class,
          name: person.name,
          age: person.age,
          classroom: person.classroom.label,
          parent_permission: person.parent_permission,
          index: index }
      end
    end
    file.write(JSON.pretty_generate(persons))
  end
end

def save_books
  File.open('./db/books.json', 'w') do |file|
    books = @books.each_with_index.map do |book, index|
      { title: book.title,
        author: book.author,
        index: index }
    end
    file.write(JSON.pretty_generate(books))
  end
end

def save_rentals
  File.open('./db/rentals.json', 'w') do |file|
    rentals = @rentals.each_with_index.map do |rental, _index|
      { date: rental.date,
        book_index: @books.index(rental.book),
        person_index: @people.index(rental.person) }
    end
    file.write(JSON.pretty_generate(rentals))
  end
end

def read_persons
  return [] unless File.exist?('./db/persons.json')

  persons_json = JSON.parse(File.read('./db/persons.json'))
  persons_json.map do |person|
    case person['class']
    when 'Teacher'
      Teacher.new(person['specialization'], person['age'], person['name'])
    when 'Student'
      Student.new(person['classroom'], person['age'], person['name'])
    end
  end
end

def read_books
  return [] unless File.exist?('./db/books.json')

  books_json = JSON.parse(File.read('./db/books.json'))
  books_json.map do |book|
    Book.new(book['title'], book['author'])
  end
end

def read_rentals
  return [] unless File.exist?('./db/rentals.json')

  rentals_json = JSON.parse(File.read('./db/rentals.json'))
  rentals_json.map do |rental|
    Rental.new(rental['date'], @books[rental['book_index']], @people[rental['person_index']])
  end
end
