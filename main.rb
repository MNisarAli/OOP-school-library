require_relative './bin/app'
require_relative './bin/menu'

app = App.new
menu = Menu.new(app)

loop do
  menu.display_options
  choice = gets.chomp.to_i
  break if choice.zero?

  menu.handle_choice(choice)
end

puts 'Goodbye!'
