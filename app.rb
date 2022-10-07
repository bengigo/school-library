require_relative 'book'
require_relative 'student'
require_relative 'teacher'

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
      puts "Title: '#{book.title}', Author: '#{book.author}'"
    end
  end

  #   list all people
  def list_people
    # puts 'Here is the list of every person'
    puts '🦹‍♀️🧝🏽‍♀️🕵️‍♀️'
    @people.each do |_person|
      puts "Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  # create a person (either student or teacher)
  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)?'
    input = gets.chomp.to_i

    case input
    when 1
      create_student
    when 2
      create_teacher
    end
  end

  # create student
  def create_student
    puts 'Age:'
    age = gets.chomp.to_i
    puts 'Name:'
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
    puts "Person (student: #{student.name} ) created successfully"
    # call present option from main
  end

  # create teacher
  def create_teacher
    puts 'teacher'
  end
  # creat a book

  # create a rental

  # list all rentals for a given person id
end
