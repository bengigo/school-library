require_relative 'nameble'
require_relative 'decorator'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

class Person < Nameable
  def initialize(age, name = 'Unkown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    super()
  end

  def correct_name
    @name
  end

  def of_age?
    if @age >= 18
      true
    elsif @age < 18
      false
    end
  end
  private :of_age?

  def can_use_services?
    is_of_age? || parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id
end
