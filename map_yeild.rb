# Create our own map method
# use to in our new array
# Display the result explicitly

def map(arr) # creating our own map method
	newArr = [] # declaring an empty array to push our results inside
	arr.each do |i| # run the block of code to iterate inside each elements in an array
		newArr << yield(i) # push the modified elements inside our newArr []
	end
	newArr
end

# this block of code runs when yield calls
map([1,2,3,4,5]) do |num|
	num * 2
end

map(newArr)
