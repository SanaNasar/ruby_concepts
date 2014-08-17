class Food
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def +(other_food)
		@name += other_food.name
	end
end

coffee = Food.new("coffee")
creamer = Food.new("creamer")

coffee + creamer # operator overloading ie) adding both the values with +

coffee.name