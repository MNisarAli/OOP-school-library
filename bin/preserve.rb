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
