# require './person'
require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Unkown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self unless
    classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
