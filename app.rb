require_relative 'book'

class App
  attr_reader :people

  # list al books
  def initialize
    @books = []
    @people = []
  end

  def list_books
    # puts 'Here are all the books in the library'
    puts '📚📚📚'
    @books.each do |book|
      puts "📕 Title: '#{book.title}', Author: '#{book.author}'"
    end
  end

  #   list all people
  def list_people
    # puts 'Here is the list of every person'
    puts '🦹‍♀️🧝🏽‍♀️🕵️‍♀️'
    @people.each do |person|
      puts "[#{person.class.name}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  # create a person (either student or teacher, not just person)
  #create student
  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)?:'
    input = gets.chomp.to_i
    if input == 1
      puts 'Age:'
      age = gets.chomp.to_i
      puts 'Name:'
      name = gets.chomp.to_i
      puts 'Has parent permission? [Y/N]'
      permission = gets.chomp.upcase
      case permission
      when 'Y'
        permission = true
      when 'N'
        permission = false
      end
      puts 'Person (student) created successfully'

      student = Student.new(nil, age, name, parent_permission: permission)


      @people.push(student)
    end

    #create teacher
  end

  # creat a book

  # create a rental

  # list all rentals for a given person id
end
