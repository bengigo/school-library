require_relative 'app'

def main
  app = App.new
  puts '📖 Welcome to School Library 📖'
  puts ''
  app.run
end

main
