require_relative 'decorator'

class TrimmerDecorator < Decorator
  def correct_name
    @nameble.correct_name[0...10]
  end
end
