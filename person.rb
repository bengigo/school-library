require_relative 'nameable'
require_relative 'base_decorator'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

class Person < Nameable
  attr_accessor :rentals, :name, :age

  def initialize(age, name = 'Unkown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
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
  attr_reader :id
end
