require_relative 'app'

OPTIONS = {
  1 => 'list_books',
  2 => 'list_people',
  3 => 'create_person',
  4 => 'create_book',
  5 => 'create_rental',
  6 => 'list_rentals',
  0 => 'quit'
}.freeze

def main
  app = App.new

  loop do
    puts 'What would you like to do?'
    OPTIONS.each { |key, value| puts "#{key}. #{value.capitalize.gsub('_', ' ')}" }

    choice = gets.chomp.to_i

    if OPTIONS.key?(choice)
      break if choice.zero?

      app.send(OPTIONS[choice])
    else
      puts 'Invalid option, please choose a number from 0 to 6'
    end
  end

  puts 'Goodbye!'
end

main
