class Menu
  OPTIONS = {
    1 => 'list_books',
    2 => 'list_people',
    3 => 'create_person',
    4 => 'create_book',
    5 => 'create_rental',
    6 => 'list_rentals',
    0 => 'quit'
  }.freeze

  def initialize(app)
    @app = app
  end

  def display_options
    puts 'What would you like to do?'
    OPTIONS.each { |key, value| puts "#{key}. #{value.capitalize.gsub('_', ' ')}" }
  end

  def handle_choice(choice)
    if OPTIONS.key?(choice)
      @app.send(OPTIONS[choice])
    else
      puts 'Invalid option, please choose a number from 0 to 6'
    end
  end
end
