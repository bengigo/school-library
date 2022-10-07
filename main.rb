#!/usr/bin/env ruby
require_relative 'app'

def main
  @app = App.new
  # app.run

  puts 'Welcome to School Library 📚'
  puts ''
  present_options
  perform_action
end

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

# rubocop:disable Metrics/CyclomaticComplexity
def check_input(input)
  case input
  when 1
    # puts 'chosen option is 1'
    @app.list_books
  when 2
    # puts 'chosen option is 2'
    @app.list_people
  when 3
    # puts 'chosen option is 3'
    @app.create_person
  when 4
    puts 'chosen option is 4'
  when 5
    puts 'chosen option is 5'
  when 6
    puts 'chosen option is 6'
  when 7
    exit
  else
    puts 'Invalid option! Please check the list again.'
  end
end
# rubocop:enable Metrics/CyclomaticComplexity

def perform_action
  input = gets.chomp.to_i
  check_input(input)
end

main
