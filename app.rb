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

  # create a person (either student or teacher)

  # creat a book

  # create a rental

  # list all rentals for a given person id
end
