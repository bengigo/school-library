require_relative 'book'

class App
  # list al books

  def initialize
    @books = []
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
    puts 'Here is the list of every person'
  end

  # create a person (either student or teacher)

  # creat a book

  # create a rental

  # list all rentals for a given person id
end
