# Implicit way of calling

def each(arr)
	for index in (0...arr.length)
		yield(arr[index])
	end
end

each([1,2,3]) do |num|
	puts num
end

# Explicit way of calling

def each(arr, &block) # consider &block as a callback function in JavaScript
	for index in (0...arr.length)
		block.call(arr[index]) # .call is used to call the block
	end
end

[1,2,3].each do |num| # this block runs when block.call is called
	puts num
end
