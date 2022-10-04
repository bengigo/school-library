class Person
    def initialize(name = "Unkown", age, parent_permission = true)
        @id = Random.rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    def  is_of_age?
        if @age >= 18
            true
        elsif @age < 18
            false
    end
    private: is_of_age?

    def can_use_services?
        is_of_age? || parent_permission
    end

    attr_reader :id :name :age
    attr_writer :name :age
end