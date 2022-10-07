require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'

class App
  attr_reader :people, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
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
      list_people
      # remove run after implementing action
      run
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
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
      # if still too many lines vs, possible to create a def for the else
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
  def list_people
    @people.each do |person|
      puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    puts ''
    run
  end

  # create person
  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)?'
    input = gets.chomp.to_i

    case input
    when 1
      create_student
    when 2
      create_teacher
    end

    run
  end

  def create_student
    puts 'Age: '
    age = gets.chomp.to_i
    puts 'Name: '
    name = gets.chomp

    puts 'Has parent permission? [Y/N]'
    permission = gets.chomp.upcase
    case permission
    when 'Y'
      permission = true
    when 'N'
      permission = false
    end

    student = Student.new(nil, age, name, parent_permission: permission)
    @people.push(student)
    puts "Student (#{student.name}) created successfully"
    puts ''
  end

  def create_teacher
    puts 'Age: '
    age = gets.chomp.to_i
    puts 'Specialization: '
    specialization = gets.chomp
    puts 'Name: '
    name = gets.chomp

    puts 'Has parent permission? [Y/N]'
    permission = gets.chomp.upcase
    case permission
    when 'Y'
      permission = true
    when 'N'
      permission = false
    end

    teacher = Teacher.new(age, specialization, name, parent_permission: permission)
    @people.push(teacher)
    puts "Teacher (#{teacher.name}) created successfully"
  end
  # create student
  # create teacher

  # create book
  def create_book
    puts 'Title:'
    title = gets.chomp
    puts 'Author:'
    author = gets.chomp
    book = Book.new(title, author)
    @books.push(book)
    puts "Book #{book.title} created successfully ✔️"
    puts ''
    run
  end

  # create rental
  def create_rental
    puts 'Select the book from the following list by number (not ID)'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: '#{book.title}', Author: '#{book.author}'"
    end
    selected_book = gets.chomp.to_i
    puts 'Date:'
    date = gets.chomp

    puts 'Select a person from the following list by number (not ID)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
    selected_person = gets.chomp.to_i

    rental = Rental.new(date, @books[selected_book], @people[selected_person])
    @rentals.push(rental)
    puts 'Rental created successfully'
    run
  end
end
