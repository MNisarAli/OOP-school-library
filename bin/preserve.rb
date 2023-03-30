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
