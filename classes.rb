require('pry')

class Rectangle # creates a class rectangle

	# attr_reader :side1
	# attr_writer :side1, :side2
	attr_accessor :side1, :side2 # this is a combination for both reader and writer

	@@num_of_rects = 0 # global variable to this whole class object

	# we create the instance variables in initalize method

	def initialize(side1, side2) # a new methd inside a class
		puts "Rectangle was created"
		@side1 = side1 # @ refers to an instance variable
		@side2 = side2
		@@num_of_rects += 1
		puts "#{@@num_of_rects} Rectangle was created"
	end

	def area
		@side1 * @side2
		secret_stuff
	end

	# both getter and setter is mentioned above
	# #Getter
	# def side1
	# 	@side1
	# end

	# #Setter
	# def side1=(input)
	# 	@side1 = input
	# end

	#Class method
	def self.taco # self is a keyword that refers to class itself.
		"this is not a taco"
	end

	def self.num_of_rects
		@@num_of_rects
	end

	private

	def secret_stuff
		"This is a secret method"
	end
end

# All the methods belongs to an instance of the class created
r1 = Rectangle.new(5, 8) # r1 is an instance of a class rectangle
r1 = Rectangle.new(5, 8) 
													# new keyword is used to create a new instance each time
puts r1
# puts r1.area
# puts r1.taco
# puts r1.side1
# puts r1.side1=30 #Everything can be redefined in ruby
# Rectangle.num_of_rects

# puts Rectangle.taco

class Square < Rectangle

	def initialize(side)
		# @side1 = side
		# @side2 = side
		super(side, side)
	end

	def to_s
		"The side of rectangle is #{side1} x #{side2}"
		
	end

end

s1 = Square.new(5)
puts s1


# look at this link for more info about attr_accesor
# http://mikeyhogarth.wordpress.com/2011/12/01/creating-your-own-attr_accessor-in-ruby/

# look at this link for more info about class
# http://juixe.com/techknow/index.php/2007/01/22/ruby-class-tutorial/
