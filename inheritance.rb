class Box

  def initialize(w, h)
    @width = w 
    @height = h
  end

  def get_area
    @width * @height
  end

end

class BigBox < Box

  def print_area
    @area = @width * @height
  end

end

# 1.) How would I create a box? How could I create a BigBox?
# 1.) How would I print the area of the BigBox?
b1 = Box.new(4, 6) # Creating a box
puts b1.get_area # printing the area of box

b2 = BigBox.new(4, 5)# Creating a BigBox
puts b2.print_area # printing the area of BigBox