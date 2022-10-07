class App
  # present options
  def present_options
    puts 'Please choose an option by entering a number:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'
  end

  # choose option
  def check_input
    input = gets.chomp.to_i
    perform_option(input)
  end

  # perform option

  # list books

  # list people

  # create person
  # create student
  # create teacher

  # create book

  # create rental
end
