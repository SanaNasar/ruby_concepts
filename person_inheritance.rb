require "./animal3_inheritance.rb" # requires the animal file and all its properties for file seperation

class Person < Animal # Person class inherits from Animal class
    @@banned_foods = /person|people|human|humans|woman|woman|children|child|baby|babies/i

    attr_accessor :age
    def initialize(age, gender, name)
        # call the super initialize
        super("person")
        @age = age
        @gender = gender
        @name = name
    end

    # stop cannibalism!
    def eat(food) # calling the eat method from above 
      unless @@banned_foods.match(food)
        super(food)
      else
        puts "(cannibalism is not allowed!!)"
      end
      self
    end
end