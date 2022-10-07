require_relative 'app'

def main
  puts '📖 Welcome to School Library 📖'
  puts ''
  app = App.new
  app.run
end
