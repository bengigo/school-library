require_relative 'decorator'

class Capitalize_Decorator < Decorator
    def correct_name
        @nameble.correct_name.capitalize
    end
end