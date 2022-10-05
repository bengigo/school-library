require_relative 'decorator'

class CapitalizeDecorator < Decorator
  def correct_name
    @nameble.correct_name.capitalize
  end
end
