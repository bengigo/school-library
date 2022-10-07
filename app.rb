require_relative 'book'

class App
  def initialize
    @books = []
  end

  def run
    present_options
    check_input
  end

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

  # rubocop:disable Metrics/CyclomaticComplexity
  def perform_option(input)
    case input
    when 1
      list_books
    when 2
      puts 'chosen option is 2'

      # remove run after implementing action
      run
    when 3
      puts 'chosen option is 3'
      # remove run after implementing action
      run
    when 4
      create_book
      # remove run after implementing action
      run
    when 5
      puts 'chosen option is 5'
      # remove run after implementing action
      run
    when 6
      puts 'chosen option is 6'
      # remove run after implementing action
      run
    when 7
      exit
    else
      puts 'Invalid option! Please check the list again.'
      run
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  # list books
  def list_books
    puts '📕📗📘📙'
    @books.each do |book|
      puts "#{book.title} by #{book.author}"
    end
    puts ''
    run
  end

  # list people

  # create person
  # create student
  # create teacher

  # create book


  # create rental
end
