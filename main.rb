require_relative 'app'

def main
  app = App.new

  puts '📖 Welcome to School Library 📖'
  puts ''
  app.present_options
end

main
