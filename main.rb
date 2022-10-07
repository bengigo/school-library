require_relative 'app'

def main
  app = App.new

  puts '📖 Welcome to School Library 📖'
  puts ''
  # app.present_options
  # app.check_input
  app.run
end

main
